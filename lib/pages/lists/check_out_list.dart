import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';

class CheckOutList extends StatefulWidget {
  const CheckOutList({Key? key}) : super(key: key);

  @override
  State<CheckOutList> createState() => _CheckOutListState();
}

class _CheckOutListState extends State<CheckOutList> {
  List<String> productName = ['T-Shirt', 'Kurti', 'Accessories'];
  List<String> price = ['₹99', '₹199','₹1999'];
  List<String> size = ['S', 'M','XL'];
  List<String> quatity = ['x 1', 'x 2','x 5'];
  List<String> color = ['Blue', 'Red','Yellow'];
  List image = [
    "https://cdn.shopify.com/s/files/1/0752/6435/products/HERO_3060bacb-5243-48fa-9460-08a6dac32b1e.jpg?v=1666168078",
    "https://cdn.shopify.com/s/files/1/0752/6435/products/HERO_3060bacb-5243-48fa-9460-08a6dac32b1e.jpg?v=1666168078",
    "https://cdn.shopify.com/s/files/1/0752/6435/products/HERO_3060bacb-5243-48fa-9460-08a6dac32b1e.jpg?v=1666168078",

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: image.length,
        itemBuilder: (context, index){
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Row(
                   children: [
                     Image.network('${image[index]}',width: 100, height: 100,),
                     SizedBox(width: 10,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(productName[index],style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
                         SizedBox(height: 5,),
                         Text(price[index],style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
                         SizedBox(height: 5,),
                         Row(
                           children: [
                             Text('Size: ${size[index]}',style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
                             SizedBox(width: 12,),
                             Text('Color: ${color[index]}',style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
                           ],
                         ),
                       ],
                     ),
                   ],
                 ),
                  Text(quatity[index],style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
                ],
              ),
            ),
          ) ;
        }
    );
  }
}
