import 'package:flutter/cupertino.dart';

abstract class WelcomeEvent{

}

class OnPageChangeEvent extends WelcomeEvent {
  int page;
  OnPageChangeEvent(this.page);
}

class OnClickEvent extends WelcomeEvent{
  BuildContext context;
  PageController pageController;
  OnClickEvent(this.pageController, this.context);
}


