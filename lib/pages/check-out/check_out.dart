import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';
import 'package:tryplore_shop/common/widgets/button/custom_btn.dart';
import 'package:tryplore_shop/common/widgets/cards/custom_cards.dart';
import 'package:tryplore_shop/pages/lists/check_out_list.dart';

import '../../common/widgets/text/custom_text.dart';
import '../lists/custom_expantion_tile.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.greyLightest,
        leading: Icon(Icons.arrow_back_ios, size: 22, color: AppColors.grey,),
        title:  Text('Checkout', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.appHorizontalSpacing),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height:300, child: Expanded(child: CheckOutList())),
              SizedBox(height: 40,),
              Wrap(
                runSpacing: 15,
                children: [
                  CustomText(txtTitle: 'Sub total', txtLabel: '₹297.00',),
                  CustomText(txtTitle: 'Estimated', txtLabel: '₹5.00',),
                  CustomText(txtTitle: 'Tax Shipping', txtLabel: '₹0.00',),
                  const Divider(color: AppColors.greyDark, thickness: 5,),
                  CustomText(txtTitle: 'Total Amount', txtLabel: '₹302.00',titleColor: AppColors.greyDarkest, labelColor: AppColors.greyDarkest,),
                ],
              ),
              SizedBox(height: 20,),
              CustomExpantionTile(),
              const Divider(color: AppColors.greyDark, thickness: 3,),
              SizedBox(height: 50,),
             SizedBox(
               height: 50,
               width: MediaQuery.of(context).size.width,
               child: ElevatedButton(onPressed: (){},
                   child: Text('Place Order', style: AppTextStyle.subTitle1M(txtColor: AppColors.greyLightest),)),
             )
            ],
          ),
        ),
      ),
    ));

  }
}