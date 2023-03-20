import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yowl_app/core/router/app_router.gr.dart';
import 'package:yowl_app/features/business/bloc/business_bloc.dart';
import 'package:yowl_app/features/business/widgets/search_result_card.dart';
import 'package:yowl_app/features/business/widgets/sort_results_widget.dart';
import 'package:yowl_app/model/business.dart';

class SearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BusinessBloc, BusinessState>(
      builder: _businessBlocBuilder,
      listener: _businessBlocListener,
    );
  }

  void _businessBlocListener(
    BuildContext context,
    BusinessState state,
  ) {
    if (state is BusinessErrorState) {
      // TODO: Show a snackbar with error message
      print('!!! ${state.message}');
    }
  }

  Widget _businessBlocBuilder(
    BuildContext context,
    BusinessState state,
  ) {
    if (state is BusinessInitialState) {
      return const Text('Search for your favorite restaurant...');
    } else if (state is BusinessSearchLoadingState) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is BusinessSearchResultsState) {
      return _buildResults(context, state);
    }
    return Container();
  }

  Widget _buildResults(BuildContext context, BusinessSearchResultsState state) {
    final query = state.query;
    final businessList = state.businessList;
    return Expanded(
      child: CustomScrollView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Text(
                      'Your search for \'${query.term}\' returned ${businessList.length} matches.',
                      style: Theme.of(context).textTheme.titleMedium),
                ),
                _buildBusinessList(context, businessList),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBusinessList(BuildContext context, List<Business> businessList) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return SearchResultCard(
            business: businessList[index],
            onTap: () => _onTap(context, businessList[index]));
      },
      itemCount: businessList.length,
    );
  }

  void _onTap(BuildContext context, Business business) {
    AutoRouter.of(context).push(BusinessDetailsScreenRoute(business: business));
  }
}
