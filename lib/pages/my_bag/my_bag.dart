import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';
import 'package:tryplore_shop/models/my_bag.dart';

import '../../common/widgets/button/custom_btn.dart';

class MyBag extends StatefulWidget {
  const MyBag({Key? key}) : super(key: key);

  @override
  State<MyBag> createState() => _MyBagState();
}

class _MyBagState extends State<MyBag> {
List<String> dropList = ['1', '2', '3', '4', '5'];
String dropValue = "1";
List<Product> productList =[
  Product(productName: 'Shirt', price: 299, size: 'M', color: 'Blue', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzwWu7f0YjN-wYxx3ujoJZsNO-kETJdg0pxQ&usqp=CAU'),
  Product(productName: 'Shirt', price: 399, size: 'S', color: 'Red', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzwWu7f0YjN-wYxx3ujoJZsNO-kETJdg0pxQ&usqp=CAU'),
  Product(productName: 'Shirt', price: 499, size: 'XL', color: 'Black', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzwWu7f0YjN-wYxx3ujoJZsNO-kETJdg0pxQ&usqp=CAU'),
  Product(productName: 'Shirt', price: 599, size: 'L', color: 'Pink', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzwWu7f0YjN-wYxx3ujoJZsNO-kETJdg0pxQ&usqp=CAU'),
  Product(productName: 'Shirt', price: 699, size: 'XXL', color: 'Yellow', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzwWu7f0YjN-wYxx3ujoJZsNO-kETJdg0pxQ&usqp=CAU'),

];

  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.greyLightest,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios, size: 22, color: AppColors.grey,),
        title: Text('My Bag', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.appHorizontalSpacing),
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: Expanded(
                child: ListView.builder(
                  itemCount: productList.length,
                    itemBuilder: (context, index){
                    return Column(
                      children: [
                        ListTile(
                          leading: Image.network(productList[index].image,height: 200, fit: BoxFit.cover,),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(productList[index].productName, style: AppTextStyle.subTitle1M(txtColor: AppColors.greyDark),),
                              Text(productList[index].price.toString(), style: AppTextStyle.subTitle2M(txtColor: AppColors.grey)),
                              Row(
                                children: [
                                  Text('Size: ${productList[index].size}', style: AppTextStyle.subTitle2M(txtColor: AppColors.grey)),
                                  const SizedBox(height: 20, child: VerticalDivider(color: AppColors.greyLight, thickness: 1,)),
                                  Text('Color: ${productList[index].color}', style: AppTextStyle.subTitle2M(txtColor: AppColors.grey)),
                                ],
                              ),

                            ],
                          ),
                          ),
                        const Divider(color:AppColors.greyLight,thickness: 1,)
                      ],
                    );
                    }),
              ),
            ),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Amount', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
                Text('₹2495', style: AppTextStyle.subTitle1M(txtColor: AppColors.greyDark),)
              ],
            ),
            const SizedBox(height: 80,),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(onPressed: (){},
                  child: Text('Continue', style: AppTextStyle.subTitle1M(txtColor: AppColors.greyLightest),)),
            )
          ],
        ),
      ),
    ));
  }
}
