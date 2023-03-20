import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yowl_app/features/business/provider/provider.dart';
import 'package:yowl_app/features/business/provider/business_provider.dart';
import 'package:yowl_app/model/models.dart';

class SortResultsWidget extends ConsumerStatefulWidget {
  const SortResultsWidget({Key? key}) : super(key: key);

  @override
  SortResultsWidgetState createState() => SortResultsWidgetState();
}

class SortResultsWidgetState extends ConsumerState<SortResultsWidget> {
  String _dropdownValue = 'distance';
  Query? _query;

  @override
  Widget build(BuildContext context) {
    final businessState = ref.watch(businessStateProvider);
    if (businessState is BusinessSearchSortByUpdatedState) {
      _query = businessState.query;
    }
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
  }

  void _sortByChanged(String? newValue) {
    _query = _query?.copyWith(
      sortBy: newValue,
    );
    setState(() {
      _dropdownValue = newValue!;
    });
    if (_query?.term != null) {
      ref.read(businessStateProvider.notifier).searchBusinesses(query: _query!);
    } else {
      ref.read(businessStateProvider.notifier).updateSortBy(sortBy: newValue!);
    }
  }
}
