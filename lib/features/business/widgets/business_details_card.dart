import 'package:flutter/material.dart';
import 'package:yowl_app/features/business/pages/business_details_page_view.dart';
import 'package:yowl_app/model/business.dart';
import 'package:yowl_app/widgets/default_card.dart';

class BusinessDetailsCard extends StatelessWidget {
  final Business business;

  const BusinessDetailsCard({Key? key, required this.business})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(business.name ?? '',
              style: Theme.of(context).textTheme.headlineLarge),
          //BusinessImages(photos: business.photos ?? []),
          BusinessDetailsPageView(business: business),
        ],
      ),
    );
  }
}
