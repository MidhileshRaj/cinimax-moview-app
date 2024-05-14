import 'package:cimax_films_app/core/app_export.dart';
import 'package:flutter/material.dart';

class UpComingShows extends StatelessWidget {
  const UpComingShows({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: AppDecoration.fillWhiteA,
        child: Column(
          children: [
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle12,
                  height: 164.v,
                  width: 122.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
