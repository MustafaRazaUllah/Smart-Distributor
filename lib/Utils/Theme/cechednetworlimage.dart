import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:smartdistributor/Constants/color.dart';

Widget cechednetworlimage(
  String imageURL, {
  required BuildContext context,
  double? radius,
}) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    width: radius ?? width * 0.15,
    height: radius ?? width * 0.15,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: AppColors.grey1,
      border: Border.all(
        color: AppColors.greyText.withOpacity(0.4),
        width: 1.5,
      ),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(200),
      child: imageURL.isNotEmpty
          ? CachedNetworkImage(
              imageUrl: imageURL,
              errorWidget: (context, url, error) => Padding(
                padding: radius == null
                    ? EdgeInsets.all((width * 0.04) * 0.7)
                    : EdgeInsets.all(radius * 0.2),
                child: Image.asset(
                  "assets/icons/noimage.png",
                  color: AppColors.greyText.withOpacity(0.6),
                  fit: BoxFit.contain,
                ),
              ),
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                child: CupertinoActivityIndicator(
                  radius: radius == null ? (width * 0.04) * 0.7 : radius * 0.2,
                  color: AppColors.greyText.withOpacity(0.6),
                ),
              ),
              width: width * 0.25,
              height: width * 0.25,
              fit: BoxFit.cover,
            )
          : Padding(
              padding: radius == null
                  ? EdgeInsets.all((width * 0.04) * 0.7)
                  : EdgeInsets.all(radius * 0.2),
              child: Image.asset(
                "assets/icons/noimage.png",
                color: AppColors.greyText.withOpacity(0.6),
                fit: BoxFit.contain,
              ),
            ),
    ),
  );
}
