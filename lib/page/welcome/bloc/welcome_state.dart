import 'package:flutter/cupertino.dart';

class WelcomeState {
  final int _page;
  final PageController _pageController = PageController(initialPage: 0);

  int get page => _page;


  WelcomeState(this._page);

  PageController get pageController => _pageController;
}
