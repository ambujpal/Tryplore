import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';
import 'package:tryplore_shop/common/widgets/text_field/read_only_textfield.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.greyLightest,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios, color: AppColors.grey, size: 22,),
        title: Text('My Orders', style: AppTextStyle.subTitle1M(txtColor: AppColors.greyDark),),
        actions: const [
          Icon(Icons.search_outlined,color: AppColors.grey, size: 25)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.appHorizontalSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Order# 1254668', style: AppTextStyle.subTitle1M(txtColor: AppColors.primary),),
              SizedBox(height: 20,),
              Container(
                height: 250,
                child: Expanded(child: Container(
                  child: ListView.builder(
                    itemCount: 5,
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
                                        Text('Qry', style: AppTextStyle.subTitle2M(txtColor: AppColors.greyDark),),
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
                      }),
                )),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Status', style: AppTextStyle.subTitle2M(fSize:16,txtColor: AppColors.greyLight),),
                  Text('Estimated Delivery', style: AppTextStyle.subTitle2M(fSize:16,txtColor: AppColors.greyLight),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('In Transit', style: AppTextStyle.subTitle1M(txtColor: AppColors.error),),
                  Text('01 March, 2023', style: AppTextStyle.subTitle1M(txtColor: AppColors.error),)
                ],
              ),
              SizedBox(height: 20,),
              Text('Order# 1254668', style: AppTextStyle.subTitle1M(txtColor: AppColors.primary),),
              SizedBox(height: 20,),
              Container(
                height: 200,
                child: Expanded(child: ListView.builder(
                    itemCount: 1,
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
                                        Text('Qry', style: AppTextStyle.subTitle2M(txtColor: AppColors.greyDark),),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Status', style: AppTextStyle.subTitle2M(fSize:16,txtColor: AppColors.greyLight),),
                  Text('Estimated Delivery', style: AppTextStyle.subTitle2M(fSize:16,txtColor: AppColors.greyLight),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Completed', style: AppTextStyle.subTitle1M(txtColor: AppColors.successDark),),
                  Text('01 March, 2023', style: AppTextStyle.subTitle1M(txtColor: AppColors.successDark),)
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
