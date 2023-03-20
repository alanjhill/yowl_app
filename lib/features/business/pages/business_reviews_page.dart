import 'package:flutter/material.dart';
import 'package:yowl_app/core/extension/review_extensions.dart';
import 'package:yowl_app/features/business/widgets/review_card.dart';
import 'package:yowl_app/model/models.dart';

class BusinessReviewsPage extends StatelessWidget {
  final Business business;

  const BusinessReviewsPage({Key? key, required this.business})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // No need to check for reviews - only results with reviews are returned
    final reviews = List<Review>.from(business.reviews!);
    reviews.sortByTimeCreated();
    final sortedReviews = reviews.reversed.toList();
    return ListView.builder(
      itemCount: business.reviews?.length ?? 0,
      itemBuilder: (context, index) {
        final review = sortedReviews[index];
        return ReviewCard(review: review);
      },
    );
  }
}
