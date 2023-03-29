import 'package:flutter/material.dart';
import 'package:tryplore_shop/pages/home_page/home_page.dart';
import 'package:tryplore_shop/pages/my_bag/my_bag.dart';
import 'package:tryplore_shop/pages/profile_page/profile_page.dart';
import 'package:tryplore_shop/pages/wish_list/wish_list.dart';

import '../../common/constant/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int  bottomindex = 0;
  List pages = [
    const HomePage(),
    const WishList(),
    const MyBag(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: pages[bottomindex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.greyLightest,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blue.withOpacity(0.5),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined, size: 30,), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_outline, size: 30,),label: 'Wish List'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined, size: 30,), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline, size: 30,), label:  'Profile'),
          ],
          currentIndex: bottomindex,
          onTap: (int index){
            setState(() {
              bottomindex = index;
            });
          },
        ),
    ));
  }
}
