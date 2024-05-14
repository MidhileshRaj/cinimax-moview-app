import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.h,
      decoration: AppDecoration.outlineBlack,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle111220x390,
            height: 220.v,
            width: 320.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            margin: EdgeInsets.only(left: 9.h),
          ),

        ],
      ),
    );
  }
}
