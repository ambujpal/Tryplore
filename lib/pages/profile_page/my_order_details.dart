import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';

class MyOrderDetails extends StatefulWidget {
  const MyOrderDetails({Key? key}) : super(key: key);

  @override
  State<MyOrderDetails> createState() => _MyOrderDetailsState();
}

class _MyOrderDetailsState extends State<MyOrderDetails> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.greyLightest,
        leading: Icon(Icons.arrow_back_ios, size: 22, color: AppColors.grey,),
        title: Text('Order# 1245621', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey ),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.appHorizontalSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              child: Expanded(child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index){
                    return SizedBox(
                      height:107,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7))),
                                  child: Image.asset('assets/images/manbeard-is.jpg')),
                              SizedBox(width: 13,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Hooded body sweatshirt', style: AppTextStyle.subTitle1M(txtColor: AppColors.greyDark),),
                                  Text('\u{20B9}210.0', style: AppTextStyle.subTitle1M(txtColor: AppColors.greyLight),),
                                  Row(
                                    children: [
                                      Text('Size', style: AppTextStyle.subTitle2M(txtColor: AppColors.greyDark),),
                                      SizedBox(width: 10,),
                                      Text('M', style: AppTextStyle.subTitle2M(txtColor: AppColors.greyLight),),
                                      SizedBox(width: 20,),
                                      Text('Color', style: AppTextStyle.subTitle2M(txtColor: AppColors.greyDark),),
                                      SizedBox(width: 10,),
                                      Text('Blue', style: AppTextStyle.subTitle2M(txtColor: AppColors.greyLight),),
                                      SizedBox(width: 20,),
                                      Text('Qty', style: AppTextStyle.subTitle2M(txtColor: AppColors.greyDark),),
                                      SizedBox(width: 10,),
                                      Text('2', style: AppTextStyle.subTitle2M(txtColor: AppColors.greyLight),),

                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  })),
            ),
            SizedBox(height: 20,),
            Text('In Transit', style: AppTextStyle.headline4M(txtColor: AppColors.error),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Estimated Delivery', style: AppTextStyle.subTitle2M(txtColor: AppColors.grey),),
                Text('01 March, 2023', style: AppTextStyle.subTitle2M(txtColor: AppColors.errorDarkest),),
              ],
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Delivery Address', style: AppTextStyle.subTitle1M(txtColor: Colors.blue),),
                      SizedBox(height: 20,),
                      Text('Sundar Moorthy', style: AppTextStyle.subTitle2M(txtColor: AppColors.greyDarkest),),
                      SizedBox(height: 10,),
                      Text('Arey Mumbai Maharatsra', style: AppTextStyle.subTitle2M(txtColor: AppColors.grey),),
                      Text('Mob- 9547845245', style: AppTextStyle.subTitle2M(txtColor: AppColors.grey),)
                    ],
                  ),
                ),
              ),
            ),
           TextButton(onPressed: (){}, child:Text('Need Help ?', style: AppTextStyle.subTitle1M(txtColor: Colors.blueAccent),))
          ],
        ),
      ),
    ));
  }
}
