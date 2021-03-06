import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyCachedNetworkImage extends StatelessWidget {
  final String url;
  final double borderRadius;
  final double? width;
  final double? height;
  final EdgeInsets padding;
  final bool cover;

  MyCachedNetworkImage(
    this.url, {
    this.width,
    this.height,
    this.borderRadius = 0,
    this.cover = true,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: this.padding,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(this.borderRadius),
        clipBehavior: Clip.hardEdge,
        child: CachedNetworkImage(
          height: this.height,
          width: this.width,
          imageUrl: this.url,
          fit: this.cover ? BoxFit.cover : null,
          placeholder: (context, _) => Shimmer.fromColors(
            child: Material(color: Colors.white),
            baseColor: Colors.grey[400]!,
            highlightColor: Colors.white,
            period: Duration(milliseconds: 350),
          ),
          errorWidget: (context, _, __) => Icon(
            Icons.error,
            color: Colors.black,
            size: 50,
          ),
        ),
      ),
    );
  }
}
