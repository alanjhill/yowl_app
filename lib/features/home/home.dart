import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yowl_app/features/search/bloc/business_bloc.dart';
import 'package:yowl_app/features/search/widgets/search_results.dart';
import 'package:yowl_app/features/search/widgets/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(title: Text(widget.title)),
        body: BlocProvider<BusinessBloc>(
          create: (context) => BusinessBloc(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 64.0, child: SearchWidget()),
              SearchResults(),
            ],
          ),
        ),
      ),
    );
  }
}
