import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';

class CustomProductDetails extends StatelessWidget {
  const CustomProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      elevation: 1,
      color: AppColors.greyLightest,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      child:  Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Product Details", style: AppTextStyle.subTitle1M(),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Color Name:', style: AppTextStyle.subTitle2M(),),
                SizedBox(width: 90,),
                Text('Off White', style: AppTextStyle.subTitle2M(),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Fabric:', style: AppTextStyle.subTitle2M(),),
                SizedBox(width: 90,),
                Text('Cotton (100% Cotton)', style: AppTextStyle.subTitle2M(),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Neck Type:', style: AppTextStyle.subTitle2M(),),
                SizedBox(width: 90,),
                Text('Rounded Neck', style: AppTextStyle.subTitle2M(),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sleeve:', style: AppTextStyle.subTitle2M(),),
                SizedBox(width: 90,),
                Text('3/4 Sleeve', style: AppTextStyle.subTitle2M(),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pattern:', style: AppTextStyle.subTitle2M(),),
                SizedBox(width: 90,),
                Text('Trendy', style: AppTextStyle.subTitle2M(),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Fit:', style: AppTextStyle.subTitle2M(),),
                SizedBox(width: 90,),
                Text('Regular Fit', style: AppTextStyle.subTitle2M(),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Care Instruction:', style: AppTextStyle.subTitle2M(),),
                SizedBox(width: 90,),
                Text('Hand Wash Only', style: AppTextStyle.subTitle2M(),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Origin:', style: AppTextStyle.subTitle2M(),),
                SizedBox(width: 90,),
                Text('India', style: AppTextStyle.subTitle2M(),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
