import 'package:flutter/material.dart';
import 'package:yowl_app/features/business/pages/business_details_page_view.dart';
import 'package:yowl_app/model/business.dart';

class BusinessDetailsScreen extends StatelessWidget {
  final Business business;

  const BusinessDetailsScreen({Key? key, required this.business}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black54,
          title: Text(
            business.name ?? '',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            BusinessDetailsPageView(business: business),
          ],
        ),
      ),
    );
  }
}
