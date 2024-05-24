import 'package:cimax_films_app/core/app_export.dart';
import 'package:flutter/material.dart';

class WatchedVideos extends StatelessWidget {
  const WatchedVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 10.v,
          runSpacing: 10.h,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle12,
              height: 164.v,
              width: 122.h,
              radius: BorderRadius.circular(5.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle12,
              height: 164.v,
              width: 122.h,
              radius: BorderRadius.circular(5.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle12,
              height: 164.v,
              width: 122.h,
              radius: BorderRadius.circular(5.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle12,
              height: 164.v,
              width: 122.h,
              radius: BorderRadius.circular(5.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle12,
              height: 164.v,
              width: 122.h,
              radius: BorderRadius.circular(5.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle12,
              height: 164.v,
              width: 122.h,
              radius: BorderRadius.circular(5.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle12,
              height: 164.v,
              width: 122.h,
              radius: BorderRadius.circular(5.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle12,
              height: 164.v,
              width: 122.h,
              radius: BorderRadius.circular(5.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle12,
              height: 164.v,
              width: 122.h,
              radius: BorderRadius.circular(5.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle12,
              height: 164.v,
              width: 122.h,
              radius: BorderRadius.circular(5.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle12,
              height: 164.v,
              width: 122.h,
              radius: BorderRadius.circular(5.h),
            ),
          ],
        ),
      ),
    );
  }
}
