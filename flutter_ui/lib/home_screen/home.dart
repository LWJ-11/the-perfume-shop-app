import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ui/cart_screen/cart_screen.dart';
import 'package:flutter_ui/category_screen/category_screen.dart';
import 'package:flutter_ui/consts/consts.dart';
import 'package:flutter_ui/home_screen/home_screen.dart';
import 'package:flutter_ui/profile_sceen/profile_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/home_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(HomeController());

    var navbarItem =[
      const BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size: 40.0,),label: home),
      const BottomNavigationBarItem(icon: Icon(Icons.category_outlined,size: 40.0),label: category),
      const BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,size: 40.0),label: cart),
      const BottomNavigationBarItem(icon: Icon(Icons.person_outlined,size: 40.0),label: account),
    ];

    var navBody =[
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen()
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(child: navBody.elementAt(controller.currentNavIndex.value)))
        ],
      ),
      bottomNavigationBar: Obx(()=>
        BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: bold),
          selectedFontSize: 15,
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items:  navbarItem,
          onTap: (value){
            controller.currentNavIndex.value=value;
          },
        ),
      ),
    );
  }
}