import 'package:flutter/material.dart';

class HomeScreenMainController extends ChangeNotifier{

  int _sliderIndex = 1;
  int get sliderIndex  => _sliderIndex;
  int _pageIndex =0;
  int get pageIndex => _pageIndex;

  changeSliderIndex(index,reason){
    _sliderIndex = index;
    notifyListeners();
  }

  changePageIndex(index){
    _pageIndex = index;
    notifyListeners();

  }


}