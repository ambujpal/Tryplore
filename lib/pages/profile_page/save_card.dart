import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';
import 'package:tryplore_shop/common/widgets/button/custom_btn.dart';
import 'package:tryplore_shop/common/widgets/button/custom_elevated_button.dart';
import 'package:tryplore_shop/common/widgets/text_field/read_only_textfield.dart';

import '../../common/widgets/button/outline_btn.dart';

class SaveCard extends StatefulWidget {
  const SaveCard({Key? key}) : super(key: key);

  @override
  State<SaveCard> createState() => _SaveCardState();
}

class _SaveCardState extends State<SaveCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.greyLightest,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios, size: 22,color:  AppColors.greyDark,),
        title: Text('Payment', style: AppTextStyle.subTitle1M(txtColor: AppColors.greyDark),),
        actions: const [
          Icon(Icons.add, color:  AppColors.greyDark,size: 25)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.appHorizontalPadding),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(),
             Wrap(
               runSpacing: 15,
               children: [
                 Text('Card Details', style: AppTextStyle.headline4M(txtColor: AppColors.greyDark),),
                 SizedBox(height: 30,),
                 ReadOnlyTextField(
                   labelText: 'Card Number',
                   hintText: '**** **** **** 8888',
                 ),
                 ReadOnlyTextField(
                   labelText: 'Expires',
                   hintText: '25/11',
                 ),
                 ReadOnlyTextField(
                   labelText: 'Card Holder Name',
                   hintText: 'Sundar Moorthy',
                 ),
               ],
             ),
              SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: OutlineBtn(
                      txtTitle: 'Cancel',
                      txtColor: AppColors.greyDark,
                    ),
                  ),
                  SizedBox(
                  width: 150,
                    child: CustomBtn(
                      txtLabel: 'Save',
                      txtColor: AppColors.greyLightest,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
