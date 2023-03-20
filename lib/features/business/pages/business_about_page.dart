import 'package:flutter/material.dart';
import 'package:yowl_app/model/business.dart';
import 'package:yowl_app/features/business/widgets/business_image.dart';
import 'package:yowl_app/features/business/widgets/business_info.dart';
import 'package:yowl_app/widgets/default_card.dart';
import 'package:yowl_app/features/business/widgets/open_hours_widget.dart';

class BusinessAboutPage extends StatelessWidget {
  final Business business;

  const BusinessAboutPage({Key? key, required this.business}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: OpenHoursWidget(hours: business.hours)),
              const SizedBox(width: 16.0),
            ],
          ),
          const Divider(height: 16.0, thickness: 1.0),
        ],
      ),
    );
  }
}
