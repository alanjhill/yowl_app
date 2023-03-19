import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yowl_app/features/search/bloc/business_bloc.dart';
import 'package:yowl_app/features/search/widgets/search_result_card.dart';
import 'package:yowl_app/model/business.dart';

class SearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BusinessBloc, BusinessState>(
      builder: (context, state) {
        if (state is BusinessInitialState) {
          return const Text('Search for your favorite restaurant...');
        } else if (state is BusinessSearchResultsState) {
          return _buildResults(context, state);
        }
        return Container();
      },
    );
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
                _buildBusinessList(businessList),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBusinessList(List<Business> businessList) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return SearchResultCard(business: businessList[index]);
      },
      itemCount: businessList.length,
    );
  }
}
