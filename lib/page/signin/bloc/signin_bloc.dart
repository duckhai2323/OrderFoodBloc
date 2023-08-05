import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orderfood_bloc/page/signin/bloc/signin_event.dart';
import 'package:orderfood_bloc/page/signin/bloc/signin_state.dart';

class SignInBloc extends Bloc<SignInEvent,SignInState>{
  SignInBloc():super(SignInState()){

  }
}