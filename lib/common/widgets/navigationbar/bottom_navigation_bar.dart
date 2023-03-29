import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.greyLightest,
        selectedItemColor: AppColors.greyDarkest,
        unselectedItemColor: AppColors.grey.withOpacity(0.6),
        onTap: (value){
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.search)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline)),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.person))
        ],

      ),
    );
  }
}

