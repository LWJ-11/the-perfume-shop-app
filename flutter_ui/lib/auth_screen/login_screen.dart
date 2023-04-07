import 'package:flutter_ui/consts/consts.dart';
import 'package:flutter_ui/consts/lists.dart';
import 'package:flutter_ui/widgets_common/applogo_widget.dart';
import 'package:flutter_ui/widgets_common/bg_widget.dart';
import 'package:flutter_ui/widgets_common/custom_textfield.dart';
import 'package:flutter_ui/widgets_common/our_button.dart';

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
            5.heightBox,
            "Log in to $appname".text.fontFamily(bold).black.size(22).make(),
            10.heightBox,
            Column(
              children: [
                customTextField(hint: emailHint, title: email),
                customTextField(hint: passwordHint, title: password),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){},child: forgetpas.text.make())),
                  5.heightBox,
                  ourButton(color: redColor,title: Login, textColor: whiteColor, onPress: (){})
                    .box
                    .width(context.screenWidth-50)
                    .make(),
                  5.heightBox,
                  createnewaccount.text.color(fontGrey).make(),
                  5.heightBox,
                  ourButton(color: lightGolden,title: Signup, textColor: lightGrey, onPress: (){})
                    .box
                    .width(context.screenWidth-50)
                    .make(),
                  10.heightBox,
                  loginwith.text.color(fontGrey).make(),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(2, (index) => CircleAvatar(
                      backgroundColor: lightGolden,
                      radius: 25,
                      child: Image.asset(socialIconList[index],
                      width: 30,
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