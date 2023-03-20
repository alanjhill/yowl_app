import 'dart:math';

import 'package:flutter/material.dart';
import 'package:yowl_app/model/models.dart';

class BusinessReviews extends StatelessWidget {
  final Business business;
  final int count;

  const BusinessReviews({Key? key, required this.business, this.count = 3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final reviews = business.reviews;
    final reviewCount = min(reviews?.length ?? 0, count);
    final bldr =  ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: reviewCount,
      itemBuilder: (context, index) => Text(reviews?[index].text ?? ''),
    );
    return bldr;
  }
}
