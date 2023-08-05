import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderfood_bloc/page/welcome/bloc/welcome_bloc.dart';
import 'package:orderfood_bloc/page/welcome/bloc/welcome_event.dart';

import 'bloc/welcome_state.dart';

class Welcome extends StatefulWidget{
  @override
  State createState() {
    return WelcomeState_();
  }
}

class WelcomeState_ extends State<Welcome> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(238, 78, 46, 1),
        body:BlocBuilder<WelcomeBloc,WelcomeState>(
          builder: (context,state){
            return Stack(
              children: [
                PageView(
                  onPageChanged: (index){
                    BlocProvider.of<WelcomeBloc>(context).add(OnPageChangeEvent(index));
                  },
                  controller: state.pageController,
                  children: [
                    page("","Đa dạng dịch vụ, phục vụ đặt trước, giao hàng tận nơi, hài lòng người dùng","assets/images/logo2.png"),
                    page("Shopee Food","Tổng hợp gợi ý ăn uống theo xu hướng","assets/images/intro1.png"),
                    page("Shopee Food","Luôn có những khuyến mãi \"hot\" lên đến 50% ","assets/images/intro2.png"),
                    page("Shopee Food","Đặt món nhanh chóng và thuận tiện","assets/images/intro3.png"),
                    page("Shopee Food","Theo dõi tiến trình giao hàng sau khi đặt xong ","assets/images/intro4.png"),
                  ],
                ),

                Positioned(
                  bottom: 70.h,
                  left: 30.w,
                  right: 30.w,
                  child: GestureDetector(
                    onTap: (){
                      BlocProvider.of<WelcomeBloc>(context).add(OnClickEvent(state.pageController,context));
                    },
                    child: Container(
                      height: 43.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0,1),
                            )
                          ]
                      ),
                      child: Center(
                        child: Text(
                          'Tiếp tục',
                          style: TextStyle(
                            color: const Color.fromRGBO(238, 78, 46, 1),
                            fontFamily: "Roboto-Medium",
                            fontWeight:FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 45.h,
                  left: 40.w,
                  right: 40.w,
                  child: DotsIndicator(
                    dotsCount: 5,
                    position:state.page,
                    decorator: DotsDecorator(
                      activeColor: Colors.white,
                      size: const Size.square(8.0),
                      activeSize: const Size(12.0, 8.0),
                      activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget page(String title,String subTitle,String imageStr){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            width: 270.w,
            height: 230.h,
            child: Image.asset(
              imageStr,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            fontFamily: "Roboto_Medium",
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical:5 ),
          child: Text(
            subTitle,
            style: TextStyle(
              color: Colors.white,
              fontWeight:FontWeight.w500,
              fontSize: 16.sp,
              fontFamily: "Roboto_Medium",
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}