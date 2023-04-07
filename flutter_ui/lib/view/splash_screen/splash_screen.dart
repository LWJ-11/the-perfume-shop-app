import 'package:flutter/material.dart';
import 'package:flutter_ui/auth_screen/login_screen.dart';
import 'package:flutter_ui/consts/colors.dart';
import 'package:flutter_ui/consts/consts.dart';
import 'package:flutter_ui/widgets_common/applogo_widget.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen ({Key? key}):super(key: key);

  @override 
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  //tạo chuyển trang
  changeScreen(){
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(()=> const LoginScreen());
    });
  }

  @override
  void initState(){
    changeScreen();
    super.initState();
  }




  //Trang SPlash đầu app, set up giao diện
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(children: [
          Align(
            alignment: Alignment.topLeft,
            child:  Image.asset("/icons/splash_login_registration_background_image.png",width: 300,),
          ),
          20.heightBox,
          applogoWidget(),
          10.heightBox,
          appname.text.fontFamily(bold).size(22).white.make(),
          5.heightBox,
          appversion.text.white.make(),
          const Spacer(),
          credits.text.white.fontFamily(semibold).make(),
          30.heightBox
        ]),
      ),
     );
  }
}