import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';

class CustomExpantionTile extends StatefulWidget {
  const CustomExpantionTile({Key? key}) : super(key: key);

  @override
  State<CustomExpantionTile> createState() => _CustomExpantionTileState();
}

class _CustomExpantionTileState extends State<CustomExpantionTile> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('Shipping Metod', style: AppTextStyle.subTitle1M(txtColor: AppColors.greyDarkest)),
      subtitle: Text('Standard (3-5 Business Days)', style: AppTextStyle.subTitle2M(txtColor: AppColors.greyDark)),
      children: [
        ListTile(title: Text(' One day delivery', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),)),
        ListTile(title: Text(' Standard delivery', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),)),
        ListTile(title: Text(' 3-5 days delivery', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),)),
        ListTile(title: Text('Same day delivery', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),)),
      ],
    );
  }
}
