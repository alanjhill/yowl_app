import 'package:flutter/material.dart';

class BusinessImage extends StatelessWidget {
  final String? imageUrl;

  const BusinessImage({Key? key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imageUrl != null) {
      return Image.network(
        imageUrl!,
        fit: BoxFit.fitHeight,
        errorBuilder: (context, error, stackTrace) {
          print(error);
          return Text('Error loading image');
        },
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return const Center(child: CircularProgressIndicator());
        },
      );
    } else {
      return _defaultImage();
    }
  }

  Widget _defaultImage() {
    return const Center(child: Text('No Image Available'));
  }
}
