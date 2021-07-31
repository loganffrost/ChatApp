import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  final String? photoUrl;
  ImageScreen(this.photoUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CachedNetworkImage(
          imageUrl: photoUrl!,
          placeholder: (context, url) => Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
          maxHeightDiskCache: 300,
          maxWidthDiskCache: 300,
        ),
      ),
    );
  }
}
