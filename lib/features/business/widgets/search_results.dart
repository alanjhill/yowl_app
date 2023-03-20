import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yowl_app/core/router/app_router.gr.dart';
import 'package:yowl_app/features/business/provider/provider.dart';
import 'package:yowl_app/features/business/widgets/search_result_card.dart';
import 'package:yowl_app/model/business.dart';

class SearchResults extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(businessStateProvider);

    // Error handling
    if (state is BusinessErrorState) {
      _showErrorDialog(context, state);
    }

    // Build handling
    if (state is BusinessInitialState) {
      return const Text('Search for restaurants...');
    } else if (state is BusinessSearchLoadingState) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is BusinessSearchResultsState) {
      return _buildResults(context, state);
    } else {
      return Container();
    }
  }

  void _showErrorDialog(
    BuildContext context,
    BusinessErrorState state,
  ) {
    if (kDebugMode) {
      print('!!! ${state.message}');
    }
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('OOPS!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(state.message),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
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
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    _getText(query.term!, businessList.length),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                _buildBusinessList(context, businessList),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// TODO: Use intl for this
  String _getText(String term, int matches) {
    if (matches == 1) {
      return 'Your search for \'$term\' returned $matches match.';
    } else {
      return 'Your search for \'$term\' returned $matches matches.';
    }
  }

  Widget _buildBusinessList(BuildContext context, List<Business> businessList) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return SearchResultCard(
          business: businessList[index],
          onTap: () => _onTap(
            context,
            businessList[index],
          ),
        );
      },
      itemCount: businessList.length,
    );
  }

  void _onTap(BuildContext context, Business business) {
    AutoRouter.of(context).push(BusinessDetailsScreenRoute(business: business));
  }
}
