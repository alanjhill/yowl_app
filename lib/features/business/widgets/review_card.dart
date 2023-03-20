import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:yowl_app/model/models.dart';
import 'package:yowl_app/widgets/default_card.dart';

class ReviewCard extends StatelessWidget {
  final Review review;

  const ReviewCard({Key? key, required this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultCard(child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(review.user?.name ?? ''),
            Text(DateFormat('d MMM ' 'y').format(review.timeCreated!)),
          ],
        ),
        const Divider(height: 16.0, thickness: 1.0),
        Text(review.text ?? ''),
      ]
    ));
  }
}
