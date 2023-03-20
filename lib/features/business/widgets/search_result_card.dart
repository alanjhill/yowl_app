import 'package:flutter/material.dart';
import 'package:yowl_app/features/business/widgets/business_image.dart';
import 'package:yowl_app/features/business/widgets/business_info.dart';
import 'package:yowl_app/features/business/widgets/business_reviews.dart';
import 'package:yowl_app/model/business.dart';
import 'package:yowl_app/widgets/default_card.dart';

class SearchResultCard extends StatelessWidget {
  final Business business;
  final VoidCallback? onTap;

  const SearchResultCard({super.key, required this.business, this.onTap});

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(business.name ?? '',
              style: Theme.of(context).textTheme.headlineSmall),
          const Divider(height: 16.0, thickness: 1.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: BusinessImage(photoUrl: business.photos?.first)),
              const SizedBox(width: 16.0),
              Expanded(child: BusinessInfo(business: business)),
            ],
          ),
          const Divider(height: 16.0, thickness: 1.0),
          Text('Latest Review', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 8.0),
          BusinessReviews(business: business, count: 1),
        ],
      ),
    );
  }
}
