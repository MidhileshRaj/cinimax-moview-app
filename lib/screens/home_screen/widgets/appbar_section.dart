import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

class RowClapperboard extends StatelessWidget {
  const RowClapperboard({super.key});

  @override
  /// Section Widget
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClapperboard2,
            height: 23.adaptSize,
            width: 23.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 5.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "CIMAX",
              style: theme.textTheme.headlineLarge,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
    );
  }

}
