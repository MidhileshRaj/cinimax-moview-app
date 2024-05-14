import 'package:bottom_bar_matu/bottom_bar_matu.dart';
import 'package:cimax_films_app/controller/home_screen_main_controller.dart';
import 'package:cimax_films_app/screens/home_screen/widgets/appbar_section.dart';
import 'package:cimax_films_app/screens/home_screen/widgets/category_builder.dart';
import 'package:cimax_films_app/screens/home_screen/widgets/seperated_categories.dart';
import 'package:cimax_films_app/screens/home_screen/widgets/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/app_export.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenMainController>(
      builder: (BuildContext context, HomeScreenMainController value,
          Widget? child) {
      return  Scaffold(
          extendBody: false,
          bottomNavigationBar: BottomBarBubble(
            bubbleSize: 15,
            color: Colors.black,
            items: [
              BottomBarItem(iconData: Icons.home_outlined),
              BottomBarItem(iconData: Icons.movie_filter_outlined),
              BottomBarItem(iconData: Icons.live_tv_rounded),
              BottomBarItem(iconData: Icons.calendar_month),
              BottomBarItem(iconData: Icons.person_2_outlined),
            ],
            // onSelect: value.changePageIndex,
          ),
          backgroundColor: appTheme.whiteA700,
          body: SingleChildScrollView(
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
                    category: 'Trending',
                  ),
                  SizedBox(height: 14.v),
                  const SeperatedCategory(category: 'Popular'),
                  SizedBox(height: 14.v),
                  const SeperatedCategory(category: 'Latest'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
