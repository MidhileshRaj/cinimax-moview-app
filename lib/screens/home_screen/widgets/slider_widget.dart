import 'package:carousel_slider/carousel_slider.dart';
import 'package:cimax_films_app/controller/home_screen_main_controller.dart';
import 'package:cimax_films_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override

  /// Section Widget
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 220.v,
        initialPage: 0,
        autoPlay: true,
        viewportFraction: .9,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
        onPageChanged: Provider.of<HomeScreenMainController>(context,listen: false).changeSliderIndex,
      ),
      itemCount: ImageConstant.carouselSliderImageList.length,
      itemBuilder: (context, index, realIndex) {
        return  Image(image: AssetImage(ImageConstant.carouselSliderImageList[index]));
      },
    );
  }

}
