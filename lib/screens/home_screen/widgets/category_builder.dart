import 'package:cimax_films_app/core/app_export.dart';
import 'package:cimax_films_app/widgets/custom_submit_button.dart';
import 'package:flutter/material.dart';

class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.v,
      width: 410.h,
      decoration: AppDecoration.outlineBlack,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ListView.separated(itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: CustomSubmitButton(tag: "Hi", height: 25.h, width: 150.v,),
            );
          },
            scrollDirection: Axis.horizontal, separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 20,);
            }, itemCount: 5,)
        ],
      ),
    );
  }
}
