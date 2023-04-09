import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ui/consts/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var navbarItem =[
      BottomNavigationBarItem(icon: Image.asset(icHome, width: 26),label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26),label: category),
      BottomNavigationBarItem(icon: Image.asset(icCart, width: 26),label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26),label: account),
    ];

    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: redColor,
        selectedLabelStyle: const TextStyle(fontFamily: semibold),
        type: BottomNavigationBarType.fixed,
        backgroundColor: whiteColor,
        items: navbarItem
      ),
    );
  }
}