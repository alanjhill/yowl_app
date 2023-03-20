import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yowl_app/features/business/bloc/business_bloc.dart';
import 'package:yowl_app/model/models.dart';

class SortResultsWidget extends StatefulWidget {
  const SortResultsWidget({Key? key}) : super(key: key);

  @override
  State<SortResultsWidget> createState() => _SortResultsWidgetState();
}

class _SortResultsWidgetState extends State<SortResultsWidget> {
  String _dropdownValue = 'distance';
  Query? _query;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BusinessBloc, BusinessState>(
      listener: _businessBlocListener,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Sort by:'),
            DropdownButton(
              value: _dropdownValue,
              items: const [
                DropdownMenuItem(
                  value: 'distance',
                  child: Text('Distance'),
                ),
                DropdownMenuItem(
                  value: 'best_match',
                  child: Text('Best Match'),
                ),
                DropdownMenuItem(
                  value: 'rating',
                  child: Text('Rating'),
                ),
                DropdownMenuItem(
                  value: 'review_count',
                  child: Text('Most Reviews'),
                ),
              ],
              onChanged: _sortByChanged,
            ),
          ],
        );
      },
    );
  }

  void _businessBlocListener(
    BuildContext context,
    BusinessState state,
  ) {
    if (state is BusinessSearchResultsState) {
      _query = state.query;
    }
  }

  void _sortByChanged(String? newValue) {
    final newQuery = _query?.copyWith(
      sortBy: newValue,
    );
    setState(() {
      _dropdownValue = newValue!;
    });
    if (newQuery == null) {
      BlocProvider.of<BusinessBloc>(context).add(
        BusinessUpdateSortByEvent(sortBy: newValue!),
      );
    } else {
      BlocProvider.of<BusinessBloc>(context).add(
        BusinessSearchEvent(query: newQuery),
      );
    }
  }
}
