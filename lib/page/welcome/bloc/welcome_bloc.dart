import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orderfood_bloc/page/welcome/bloc/welcome_event.dart';
import 'package:orderfood_bloc/page/welcome/bloc/welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent,WelcomeState>{
  WelcomeBloc():super(WelcomeState(0)){
    on<OnPageChangeEvent>((event,emit){
      emit(WelcomeState(event.page));
    });

    on<OnClickEvent>((event,emit){
      if(state.page < 4){
         event.pageController.animateToPage(state.page+1, duration: const Duration(microseconds: 300), curve: Curves.decelerate);
        emit(WelcomeState(state.page+1));
      } else {
        Navigator.of(event.context).pushNamedAndRemoveUntil("SignIn", (route) => false);
      }
    });
  }
}