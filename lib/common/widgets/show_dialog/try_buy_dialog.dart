import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';

class TryAndBuyDialog extends StatelessWidget {
  const TryAndBuyDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      title: Text('What is Try And Buy Feature ?', style: AppTextStyle.subTitle1M(txtColor: Colors.black),),
      content: Column(
        children: [
          BulletedList(
            bulletColor: Colors.blue.withOpacity(0.6),
            listItems: [
              'Try and Buy feature allows you to Order any 2 products of same seller and on delivery you can Try both products at your place and then Buy & Pay only for what you Like.This is exactly like you would do while shopping at offline stores.'
            ],
            style: AppTextStyle.subTitle2M(),
          ),
          SizedBox(height: 20,),
          Text("How To Best Use Try & Buy Features ?", style: AppTextStyle.subTitle1M(txtColor: Colors.black),),
          BulletedList(
            bulletColor: Colors.blue.withOpacity(0.6),
            listItems: [
              'If you are a person who is not sure of size then you can order 2 different sizes of same product and Try both of them at your place and decide which one to buy.',
              'If you are a person who is sure of size then you can order 2 different products of same size and Try both of them at your place and decide which one to buy.'
            ],
            style: AppTextStyle.subTitle2M(),
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context, "Close");
        },
            child: Text('Close', style: AppTextStyle.subTitle1M(txtColor: AppColors.error),))
      ],
    );
  }
}
