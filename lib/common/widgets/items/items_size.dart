import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';

class CustomItemSize extends StatefulWidget {
  const CustomItemSize({Key? key}) : super(key: key);

  @override
  State<CustomItemSize> createState() => _CustomItemSizeState();
}

class _CustomItemSizeState extends State<CustomItemSize> {
  List <String>sundar = ['XS', 'S', 'M', 'L', 'XL'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sundar.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: AppColors.greyLight,
                child: Center(child: Text(sundar[index], style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),))),
          );
        }
    );
  }
}
