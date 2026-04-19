import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/core/styles/app_colors.dart';

class ImageWidget extends StatelessWidget {
  final BoxFit? fit;
  final IconData? icon;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final String imageUrl;
  final double? iconSize;
  final bool isFromSplash;

  const ImageWidget({
    super.key,
    this.fit,
    this.icon,
    this.padding,
    this.height,
    this.width,
    this.iconSize,
    required this.imageUrl,
    this.isFromSplash = false,
  });

  @override
  Widget build(BuildContext context) {
    return imageUrl.isEmpty || imageUrl == 'null' || imageUrl.contains('null')
        ? Container(
            color: AppColors.colorWhite,
            child: icon == null
                ? Icon(
                    Icons.image_rounded,
                    size: iconSize,
                    color: Colors.red.withValues(alpha: 0.5),
                  )
                : Icon(
                    icon ?? Icons.image_rounded,
                    color: Colors.red.withValues(alpha: 0.5),
                    size: 30,
                  ),
          )
        : CachedNetworkImage(
            maxWidthDiskCache: 500,
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            imageUrl: imageUrl,
            placeholder: (context, loadingImage) {
              return Container(
                color: AppColors.colorWhite,
                child: isFromSplash
                    ? SizedBox.shrink()
                    : icon == null
                    ? Icon(
                        Icons.image_rounded,
                        size: iconSize,
                        color: Colors.red.withValues(alpha: 0.5),
                      )
                    : Icon(
                        icon ?? Icons.image_rounded,
                        color: Colors.red.withValues(alpha: 0.5),
                        size: 30,
                      ),
              );
            },
            errorWidget: (context, url, error) {
              return Container(
                color: AppColors.colorWhite,
                child: isFromSplash
                    ? SizedBox.shrink()
                    : icon == null
                    ? Icon(
                        Icons.image_rounded,
                        size: iconSize,
                        color: Colors.red.withValues(alpha: 0.5),
                      )
                    : Icon(
                        icon ?? Icons.image_rounded,
                        color: Colors.red.withValues(alpha: 0.5),
                        size: 30,
                      ),
              );
            },
          );
  }
}
