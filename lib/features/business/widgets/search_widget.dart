import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yowl_app/features/business/provider/provider.dart';
import 'package:yowl_app/features/business/provider/business_provider.dart';
import 'package:yowl_app/model/query.dart';

class SearchWidget extends ConsumerStatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  SearchWidgetState createState() => SearchWidgetState();
}

class SearchWidgetState extends ConsumerState<SearchWidget> {
  final _textController = TextEditingController();

  late Query _query;

  @override
  void initState() {
    super.initState();
    _query = Query.withDefaults();
  }

  @override
  Widget build(BuildContext context) {
    final businessState = ref.watch(businessStateProvider);
    if (businessState is BusinessSearchSortByUpdatedState) {
      _query = businessState.query;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimSearchBar(
        width: 400,
        autoFocus: true,
        rtl: false,
        textController: _textController,
        onSuffixTap: () {
          // Do nothing
        },
        closeSearchOnSuffixTap: false,
        onSubmitted: (String value) {
          _search(value);
        },
      ),
    );
  }

  void _search(String term) {
    _query = _query.copyWith(term: term);
    ref.read(businessStateProvider.notifier).searchBusinesses(query: _query);
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
