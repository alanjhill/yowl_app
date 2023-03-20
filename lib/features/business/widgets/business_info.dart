import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:yowl_app/model/business.dart';

class BusinessInfo extends StatelessWidget {
  final Business business;

  const BusinessInfo({Key? key, required this.business}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: RatingBarIndicator(
                rating: business.rating ?? 0,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.green,
                ),
                itemCount: 5,
                // TODO: size so it doesn't overflow
                itemSize: 32.0,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        Text('Rating: ${business.rating}', style: textTheme.bodyMedium),
        if (business.reviewCount != null) const SizedBox(height: 4.0),
        if (business.reviewCount != null)
          Text('Reviews: ${business.reviewCount}', style: textTheme.bodyMedium),
        if (business.price != null) const SizedBox(height: 4.0),
        if (business.price != null)
          Text('Price: ${business.price}', style: textTheme.bodyMedium),
        if (business.distance != null) const SizedBox(height: 4.0),
        if (business.distance != null)
          Text('Distance: ${_getDistance(business.distance!)} km',
              style: textTheme.bodyMedium),
      ],
    );
  }

  String _getDistance(double distance) {
    return (distance / 1000.0).toStringAsFixed(2);
  }
}
