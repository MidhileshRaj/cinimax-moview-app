import 'package:cimax_films_app/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class UpComingShows extends StatelessWidget {
  const UpComingShows({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gap(10),
              Text(
                "Upcoming",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              )
            ],
          ),
          const Gap(10),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Today"),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).width * .05,
                right: MediaQuery.sizeOf(context).width * .05),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: 10,
              spacing: 10,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle12,
                  height: 164.v,
                  width: 122.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle12,
                  height: 164.v,
                  width: 122.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle12,
                  height: 164.v,
                  width: 122.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle12,
                  height: 164.v,
                  width: 122.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
