import 'package:cimax_films_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SeperatedCategory extends StatelessWidget {
  const SeperatedCategory({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185.v,
      width: 411.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 1.h,
                top: 1.v,
              ),
              child: Text(
                category,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(right: 20.h),
              child: Text(
                "See all",
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 21.v),
              decoration: AppDecoration.outlineBlack,
              child: ListView.separated(itemBuilder: (context, index){
                return CustomImageView(
                  imagePath: ImageConstant.imgRectangle12,
                  height: 164.v,
                  width: 122.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                );
              },scrollDirection: Axis.horizontal, separatorBuilder: (BuildContext context, int index) { return const Gap(10); }, itemCount: 10,),
            ),
          )
        ],
      ),
    );
  }
}
