import 'package:flutter/material.dart';
import 'package:yowl_app/model/business.dart';
import 'package:yowl_app/widgets/business_info.dart';
import 'package:yowl_app/widgets/business_image.dart';
import 'package:yowl_app/widgets/default_card.dart';

class SearchResultCard extends StatelessWidget {
  final Business business;
  final VoidCallback? onTap;

  SearchResultCard({required this.business, this.onTap});

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(business.name ?? '', style: Theme.of(context).textTheme.headlineSmall),
          const Divider(height: 8.0, thickness: 1.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: BusinessImage(imageUrl: business.imageUrl)),
              const SizedBox(width: 8.0),
              Expanded(child: BusinessInfo(business: business)),
            ],
          ),
        ],
      ),
    );
  }
}
