import 'package:flutter_ui/auth_screen/signup_screen.dart';
import 'package:flutter_ui/consts/consts.dart';
import 'package:flutter_ui/consts/lists.dart';
import 'package:flutter_ui/home_screen/home.dart';
import 'package:flutter_ui/widgets_common/applogo_widget.dart';
import 'package:flutter_ui/widgets_common/bg_widget.dart';
import 'package:flutter_ui/widgets_common/custom_textfield.dart';
import 'package:flutter_ui/widgets_common/our_button.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen ({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            Column(
              children: [
                // "Log in".text.fontFamily(bold).color(golden).size(18).make(),
                5.heightBox,
                customTextField(hint: emailHint, title: email),
                customTextField(hint: passwordHint, title: password),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){},child: forgetpas.text.make())),
                  5.heightBox,
                  ourButton(color: redColor,title: Login, textColor: whiteColor, onPress: (){
                    Get.to(()=> const Home());
                  })
                    .box
                    .width(context.screenWidth-50)
                    .make(),
                  5.heightBox,
                  createnewaccount.text.color(fontGrey).make(),
                  5.heightBox,
                  ourButton(color: redColor,title: Signup, textColor: lightGrey, onPress: (){
                    Get.to(()=>const SignUpScreen());
                  })
                    .box
                    .width(context.screenWidth-50)
                    .make(),
                  15.heightBox,
                  loginwith.text.color(fontGrey).make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      2, 
                      (index) => Padding(padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                        backgroundColor: lightGolden,
                        radius: 25,
                        child: Image.asset(socialIconList[index],
                        width: 30,
                        ) 
                      ),
                    )),
                  )
              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).make()
          
          ],
        ),
      ),
    ));
  }
}