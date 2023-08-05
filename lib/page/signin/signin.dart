import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget{

  @override
  State createState() {
    return SignInState_();
  }
}

class SignInState_ extends State<SignIn>{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Container(
              color: Colors.grey.withOpacity(0.3),
              height: 1.h,
            ),
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 30,
                color: const Color.fromRGBO(238, 78, 46, 1),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              Text(
                'Đăng nhập / Đăng ký',
                style: TextStyle(
                   color: Colors.black,
                  fontFamily: "Roboto-Medium",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                width: 30.w,
                height: 30.h,
              ),
            ],
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 60.w,
                  height: 60.h,
                  child: Image.asset(
                    'assets/images/logo_signin.png',
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(
                  height: 20.h,
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.grey,fontSize: 14,fontFamily: "Roboto-Medium"),
                      prefixIcon: Icon(Icons.email_outlined,size: 23,color: Colors.grey),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.h,
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child:TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey,fontSize: 14,fontFamily: "Roboto-Medium"),
                      prefixIcon: Icon(Icons.lock_outline,size: 23,color: Colors.grey),
                    ),
                  ),
                ),

                SizedBox(
                  height: 12.h,
                ),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color:const Color.fromRGBO(238, 78, 46, 1),
                  ),
                  child: Center(
                    child: Text(
                      'Tiếp tục',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "Roboto-Medium",
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 40.h,
                ),

                Text(
                  'HOẶC',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                    fontFamily: "Roboto-Medium",
                  ),
                ),

                SizedBox(
                  height: 20.h,
                ),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 28),
                  height: 38.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Image.asset(
                            'assets/images/logo_google.png',
                            width: 22.w,
                            height: 22.h,
                          ),
                        ),
                        Text(
                          'Tiếp tục với Google',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: "Roboto-Medium",
                          ),
                        ),
                        const SizedBox(width: 20,),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.h,
                ),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 28),
                  height: 38.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Image.asset(
                            'assets/images/logo_facebk.png',
                            width: 22.w,
                            height: 22.h,
                          ),
                        ),
                        Text(
                          'Tiếp tục với Facebook',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: "Roboto-Medium",
                          ),
                        ),
                        const SizedBox(width: 20,),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.h,
                ),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 28),
                  height: 38.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Image.asset(
                            'assets/images/logo_twitter.png',
                            width: 22.w,
                            height: 22.h,
                          ),
                        ),
                        Text(
                          'Tiếp tục với Twitter',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: "Roboto-Medium",
                          ),
                        ),
                        const SizedBox(width: 20,),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}