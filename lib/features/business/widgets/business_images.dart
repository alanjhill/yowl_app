import 'package:flutter/material.dart';
import 'package:yowl_app/features/business/widgets/business_image.dart';

class BusinessImages extends StatelessWidget {
  final List<String> photos;
  
  const BusinessImages({Key? key, required this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.8),
        itemCount: photos.length,
        itemBuilder: (context, index) {
          print('>>> photos.length: ${photos.length}');
          return _carouselItem(photos[index]);
        }
      ),
    );
  }
  
  Widget _carouselItem(String photoUrl) {
    return BusinessImage(photoUrl: photoUrl);
  }
}
