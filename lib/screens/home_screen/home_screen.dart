import 'package:cimax_films_app/screens/home_screen/widgets/appbar_section.dart';
import 'package:cimax_films_app/screens/home_screen/widgets/category_builder.dart';
import 'package:cimax_films_app/screens/home_screen/widgets/seperated_categories.dart';
import 'package:cimax_films_app/screens/home_screen/widgets/slider_widget.dart';
import 'package:flutter/material.dart';

import '../../core/app_export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              /// Top section Widget
              SizedBox(height: 70.v),
              const RowClapperboard(),

              /// Poster Carousal Widget
              SizedBox(height: 13.v),
              const SliderWidget(),

              /// Category button section
              SizedBox(height: 23.v),
              const CategoryBuilder(),

              /// Tending Section
              SizedBox(height: 22.v),
              const SeperatedCategory(
                category: 'Trending', gapBetweenContent: 13,
              ),
              SizedBox(height: 14.v),
              const SeperatedCategory(category: 'Popular', gapBetweenContent: 10,),
              SizedBox(height: 14.v),
              const SeperatedCategory(category: 'Latest', gapBetweenContent: 12,),
            ],
          ),
        ),
    );
  }
}
