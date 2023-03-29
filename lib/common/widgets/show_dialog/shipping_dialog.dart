import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';
class ShippingDialog extends StatelessWidget {
  const ShippingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        title: Text('Shipping',style: AppTextStyle.subTitle1M(txtColor: AppColors.greyDark),textAlign: TextAlign.center,),
        content: BulletedList(
          bulletColor: Colors.blue.withOpacity(0.7),
          listItems: [
            '7 days return policy.',
            'Cash on delivery available.',
            'We provide free shipping on all TRY & BUY orders.',
            'Once the order is shipped from the warehouse or Vendor, it cannot be canceled.',
            'We take care of all parameters that ensure your delivery reaches you at the earliest.',
            'The TRY & BUY order delivery will be done between the chosen time slot by the customer.',
            'When the shipment is delivered and if the customer receives a faulty product, then the customer can raise the return request.',
            'The tentative delivery period for Normal orders varies from 3-5 days. However, the actual delivery time may vary due to unexpected circumstances.'
          ],
          style: AppTextStyle.subTitle2M(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: TextButton(onPressed: (){
              Navigator.pop(context, 'Close');
            }, child:Text('Close', style: AppTextStyle.subTitle1M(txtColor: AppColors.error),)),
          )
        ],
      ),
    );
  }
}
