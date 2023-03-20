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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimSearchBar(
        width: 400,
        autoFocus: true,
        rtl: false,
        textController: _textController,
        onSuffixTap: () {
          print('>>> onSuffixTap');
        },
        closeSearchOnSuffixTap: false,
        onSubmitted: (String value) {
          _search(value);
        },
      ),
    );
  }

  /// TODO: hardcoded for this exercise (with limited search functionality)
  void _search(String searchString) {
    final query = Query(
        // This is my GPS location!
        latitude: 49.32300630037216,
        longitude: -123.07326573046741,
        radius: 4000,
        categories: 'restaurants',
        limit: 10,
        locale: 'en_CA',
        offset: 0,
        sortBy: 'distance', // Default sort distance
        term: searchString);
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
