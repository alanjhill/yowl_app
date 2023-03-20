import 'package:flutter/material.dart';
import 'package:yowl_app/model/models.dart';

class OpenHoursWidget extends StatelessWidget {
  final List<Hours>? hours;

  const OpenHoursWidget({Key? key, required this.hours}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (hours != null && hours?.length != null && hours?.isNotEmpty == true) {
      final hoursToDisplay = hours?.first;
      final itemCount = hoursToDisplay?.open?.length ?? 0;
      if (itemCount > 0) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Opening Hours ${_getOpenNow(hoursToDisplay?.isOpenNow)}'),
            const Divider(height: 8.0, thickness: 1.0),
            ListView.builder(
              shrinkWrap: true,
              itemCount: itemCount,
              itemBuilder: (context, index) {
                // TODO: Cater for multiple opening times on the same day
                // TODO: Cater for days when closed
                final openHours = hoursToDisplay?.open?[index];
                return _hoursRow(openHours);
              },
            ),
          ],
        );
      }
    }
    return const Text('Opening hours not available');
  }

  String _getOpenNow(bool? openNow) {
    if (openNow == true) {
      return '(Open Now)';
    } else if (openNow == false) {
      return '(Closed Now)';
    }
    return '';
  }

  Widget _hoursRow(OpenHours? openHours) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(_getDay(openHours?.day ?? 0)),
        Text('${openHours?.start} - ${openHours?.end}'),
      ],
    );
  }

  // TODO: Find a better (more elegant) way of doing this
  String _getDay(int dayNum) {
    switch (dayNum) {
      case 0:
        return 'Monday';
      case 1:
        return 'Tuesday';
      case 2:
        return 'Wednesday';
      case 3:
        return 'Thursday';
      case 4:
        return 'Friday';
      case 5:
        return 'Saturday';
      case 6:
        return 'Sunday';
      default:
        return '';
    }
  }
}
