import 'package:cimax_films_app/controller/home_screen_main_controller.dart';
import 'package:cimax_films_app/screens/home_screen/home_screen.dart';
import 'package:cimax_films_app/screens/home_screen/profile_page.dart';
import 'package:cimax_films_app/screens/home_screen/upcoming_show_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import '../../core/app_export.dart';
import '../../utils/theme/theme_helper.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<HomeScreenMainController>(context,listen: false).initPageController();
    return Consumer<HomeScreenMainController>(
      builder: (BuildContext context, HomeScreenMainController value,
          Widget? child) {
      return  Scaffold(
          extendBody: false,
          bottomNavigationBar: SlidingClippedNavBar(
            backgroundColor: Colors.white,
            inactiveColor: Colors.black,
            onButtonPressed: (index) {
            Provider.of<HomeScreenMainController>(context,listen: false).changePageIndex(index);
              // controller.animateToPage(selectedIndex,
              //     duration: const Duration(milliseconds: 400),
              //     curve: Curves.easeOutQuad);
            },
            iconSize: 20,
            activeColor: Colors.amber,
            selectedIndex: value.pageIndex,
            barItems: [
              BarItem(
                icon: CupertinoIcons.home,
                title: 'Home',
              ),
              BarItem(
                icon: Icons.movie_creation_outlined,
                title: 'Movies',
              ), BarItem(
                icon: CupertinoIcons.calendar,
                title: 'Upcoming',
              ), BarItem(
                icon: CupertinoIcons.person,
                title: 'Profile',
              ),
              /// Add more BarItem if you want
            ],
          ),
          backgroundColor: appTheme.whiteA700,
          body:PageView(
            controller: value.pageController,
            onPageChanged:(index) {
              Provider.of<HomeScreenMainController>(context,listen: false).changePageIndex(index);

            } ,
            children: const [
              HomeScreen(),
              HomeScreen(),
              UpComingShows(),
              ProfilePage(name: "",),
            ],
          ),
        );
      },
    );
  }
}
