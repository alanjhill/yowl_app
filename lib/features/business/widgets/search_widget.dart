import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yowl_app/features/business/bloc/business_bloc.dart';
import 'package:yowl_app/model/query.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final _textController = TextEditingController();

  late Query _query;

  @override
  void initState() {
    super.initState();
    _query = Query.withDefaults();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BusinessBloc, BusinessState>(
      listener: (context, state) {
        _query = state.query;
      },
      child: Padding(
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
      ),
    );
  }

  void _search(String term) {
    final query = _query.copyWith(term: term);
    BlocProvider.of<BusinessBloc>(context).add(
      BusinessSearchEvent(query: query),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
