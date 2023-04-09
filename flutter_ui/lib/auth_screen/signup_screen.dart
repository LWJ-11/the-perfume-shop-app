import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ui/consts/lists.dart';
import 'package:flutter_ui/widgets_common/custom_textfield.dart';
import 'package:flutter_ui/widgets_common/our_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../consts/consts.dart';
import '../widgets_common/applogo_widget.dart';
import '../widgets_common/bg_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}): super(key: key);

  @override
  State<SignUpScreen> createState() => _SignupScreenState();

}
  class _SignupScreenState extends State<SignUpScreen>{
  
  bool? isCheck = false;
  
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
                 "Join to $appname".text.fontFamily(bold).black.size(18).make(),
                5.heightBox,
                customTextField(hint: nameHint, title: name),
                customTextField(hint: emailHint, title: email),
                customTextField(hint: passwordHint, title: password),
                customTextField(hint: passwordHint, title: retypePassword),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: (){},
                    child: forgetpas.text.make()
                  )),
                  10.heightBox,                                               
                Row(
                  children: [
                    Checkbox(
                      checkColor: redColor,
                      value: isCheck, 
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      }
                    ),
                    10.heightBox,
                    Expanded(
                      child: RichText(
                        text:const TextSpan(
                        children: [
                          TextSpan(text: "I agree to the ",
                          style:  TextStyle(
                            fontFamily: regular,
                            color: fontGrey
                          )),
                          TextSpan(text: termAndCond,
                          style:  TextStyle(
                            fontFamily: regular,
                            color: redColor
                          )),
                          TextSpan(text: " & ",
                          style:  TextStyle(
                            fontFamily: regular,
                            color: fontGrey
                          )),
                          TextSpan(text: privacyPolicy,
                          style:  TextStyle(
                            fontFamily: regular,
                            color: redColor
                          )),
                        ]
                      )),
                    )
                  ],
                ),
                  15.heightBox,
                  ourButton(
                      color: isCheck == true ? redColor : lightGrey,
                      title: Signup, 
                      textColor: whiteColor, 
                      onPress: (){}
                    )
                    .box
                    .width(context.screenWidth-50)
                    .make(),
                    15.heightBox,
                    //Tạo sự kiện lùi về bằng OnTap()  
                  RichText(
                    text: const TextSpan(
                    children: [
                      TextSpan(
                        text: alreadyHaveAccount,
                        style: TextStyle(fontFamily: bold, color: fontGrey)
                      ),
                      TextSpan(
                        text: Login,
                        style: TextStyle(fontFamily: bold, color: redColor)
                      )
                    ]
                  )).onTap(() {
                    Get.back();
                  })
              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).make()
          
          ],
        ),
      ),
    ));
  }
}