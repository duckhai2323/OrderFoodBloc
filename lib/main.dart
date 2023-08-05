import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderfood_bloc/page/welcome/bloc/welcome_bloc.dart';
import 'package:orderfood_bloc/page/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WelcomeBloc(),
      child: ScreenUtilInit(
        builder: (context,child) => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            backgroundColor: Colors.white,
            useMaterial3: true,
          ),
          home:Welcome(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}