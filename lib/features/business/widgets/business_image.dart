import 'package:flutter/material.dart';

class BusinessImage extends StatelessWidget {
  final String? photoUrl;

  const BusinessImage({Key? key, this.photoUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (photoUrl != null) {
      return LayoutBuilder(builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxWidth,
          width: constraints.maxHeight,
          child: ClipRect(
            child: Align(
              alignment: Alignment.center,
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: Image.network(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                photoUrl!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return _defaultImage();
                },
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ),
        );
      });
    } else {
      return _defaultImage();
    }
  }

  Widget _defaultImage() {
    return const Center(child: Text('No Image Available'));
  }
}
