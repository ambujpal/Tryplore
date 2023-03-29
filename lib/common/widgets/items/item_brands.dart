import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';

class CustomItemBrands extends StatefulWidget {
  const CustomItemBrands({Key? key}) : super(key: key);

  @override
  State<CustomItemBrands> createState() => _CustomItemBrandsState();
}

class _CustomItemBrandsState extends State<CustomItemBrands> {
  List <String>sundar = ['Armani', 'Dior', 'Calvin', 'Diesel', 'Polo', 'Tommy Hilfiger'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: sundar.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(sundar[index], style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
          );
        }
    );
  }
}
