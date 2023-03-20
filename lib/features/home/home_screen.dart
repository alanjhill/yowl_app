import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yowl_app/features/business/bloc/business_bloc.dart';
import 'package:yowl_app/features/business/widgets/search_results.dart';
import 'package:yowl_app/features/business/widgets/search_widget.dart';
import 'package:yowl_app/features/business/widgets/sort_results_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black54,
          title: Text(
            'Yowl',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: BlocProvider<BusinessBloc>(
          create: (context) => BusinessBloc(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 64.0, child: SearchWidget()),
              const SortResultsWidget(),
              SearchResults(),
            ],
          ),
        ),
      ),
    );
  }
}
