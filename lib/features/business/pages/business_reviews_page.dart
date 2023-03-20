import 'package:flutter/material.dart';
import 'package:yowl_app/features/business/widgets/review_card.dart';
import 'package:yowl_app/model/business.dart';

class BusinessReviewsPage extends StatelessWidget {
  final Business business;

  const BusinessReviewsPage({Key? key, required this.business})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // No need to check for reviews - only results with reviews are returned
    return ListView.builder(
      itemCount: business.reviews?.length ?? 0,
      itemBuilder: (context, index) {
        final review = business.reviews?[index];
        return ReviewCard(review: review!);
      },
    );
  }
}
