import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';
import 'package:tryplore_shop/common/widgets/button/outline_btn.dart';
import 'package:tryplore_shop/common/widgets/color_picker/custom_color_picker.dart';
import 'package:tryplore_shop/common/widgets/items/item_brands.dart';
import 'package:tryplore_shop/common/widgets/range_slider/range_slider.dart';

import '../../common/widgets/items/items_size.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.greyLightest,
        elevation: 0,
        title: Text('Filters', style: AppTextStyle.headline4M(txtColor: Colors.blueAccent),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.close, color: AppColors.grey,)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.appHorizontalSpacing),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Price Range', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
              const SizedBox(height: 50,),
              const CustomRangeSlider(),
              Text('Colors', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
              const SizedBox(height: 70, child: Expanded(child: CustomColorPicker())),
              Text('Size', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
              const SizedBox(height: 70, child: Expanded(child: CustomItemSize())),
              Text('Size', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
              const SizedBox(height: 250, child: Expanded(child: CustomItemBrands())),
              OutlineBtn(txtTitle: 'Clear',),
              

            ],
          ),
        ),
      ),
    ));
  }
}
