import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';
import 'package:tryplore_shop/pages/lists/review_list.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.shopping_bag_outlined),
      ),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.greyLightest,
        leading: Icon(Icons.arrow_back_ios, color: AppColors.grey,),
        title: Text('Reviwes', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.appHorizontalSpacing),
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: Card(
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/manbeard-is.jpg'),
                          SizedBox(width: 15,),
                          Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('T-Shirt', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
                              Text('Raymond', style: AppTextStyle.subTitle2M(txtColor: AppColors.grey),),
                            ],
                          ),
                        ],
                      ),
                      Text('₹999', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('15 Review', style: AppTextStyle.subTitle2M(txtColor: AppColors.grey),),
              Row(
                children: [
                  Text('Write a Review', style: AppTextStyle.subTitle2M(txtColor: AppColors.grey),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.edit_outlined, size: 20,))
                ],
              )
            ],),

            Expanded(child: ReviewList())
          ],
        ),
      ),
    ));
  }
}
