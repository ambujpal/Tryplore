import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';
import 'package:tryplore_shop/common/widgets/button/custom_txt_btn.dart';
import 'package:tryplore_shop/common/widgets/show_dialog/shipping_dialog.dart';
import 'package:tryplore_shop/common/widgets/show_dialog/try_buy_dialog.dart';
import '../../common/widgets/custom_product_details.dart';
import '../../models/product_details.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key,}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List<String> txtList = ['','Leather Trim','Lifetime Guarantee','Ipsum dolor sit amet',];
  List<String> itemSize = ['S','M','XL','XLL','XS',];
  List<PDetailsModel> listImage = [
    PDetailsModel(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScS4USn8inLOSZCbWEUrF1Kkiwlh7Vjh-M3LYlkvPz&s'),
    PDetailsModel(image: 'https://images.unsplash.com/photo-1420593248178-d88870618ca0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bmF0dXJhbHxlbnwwfHwwfHw%3D&w=1000&q=80'),
    PDetailsModel(image: 'https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg'),
    PDetailsModel(image: 'https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg'),
    PDetailsModel(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwNmi0cwVWpzedJIYxFH-GPHDeZljAp-ymG9lUFA4U&s'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(

        elevation: 0,
        backgroundColor: AppColors.greyLightest,
        leading: const Icon(Icons.arrow_back_ios,color: Colors.blue,size: 25,),
        actions: const [
          Icon(Icons.meeting_room_outlined, color: Colors.blue,size: 27,),
          Icon(Icons.share_outlined, color: Colors.blue,size: 27,),
          SizedBox(width: 10,)
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listImage.length,
                    itemBuilder:(context, index){
                      return Image.network(listImage[index].image, width: MediaQuery.of(context).size.width,fit: BoxFit.cover,);
                    }
                ),
              ),
            ),
            const SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: AppDimens.appHorizontalSpacing),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('Product Name', style: AppTextStyle.subTitle1M(),),
                     Text('₹599', style: AppTextStyle.subTitle1M(),),
                   ],
                 ),
                 Row(
                   children: [
                     const Icon(Icons.star, color: AppColors.primary,),
                     const Icon(Icons.star, color: AppColors.primary,),
                     const Icon(Icons.star, color: AppColors.primary,),
                     const Icon(Icons.star, color: AppColors.primary,),
                     const Icon(Icons.star_border_outlined, color: AppColors.grey,),
                     const SizedBox(width: 5,),
                     Text('15 Reviews', style: AppTextStyle.subTitle1M(),),
                   ],
                 ),
                 SizedBox(height: 15,),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text('*', style: TextStyle(fontSize: 25),),
                     SizedBox(width: 7,),
                     Text("Available Offers", style: AppTextStyle.subTitle2M(),)
                   ],
                 ),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text('*', style: TextStyle(fontSize: 25),),
                     SizedBox(width: 7,),
                     Text("Get Extra 10% off On First Order ", style: AppTextStyle.subTitle2M(),)
                   ],
                 ),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text('*', style: TextStyle(fontSize: 25),),
                     SizedBox(width: 7,),
                     Text("Use Code: TRY10", style: AppTextStyle.subTitle2M(),)
                   ],
                 ),

                 SizedBox(height: 15,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Size:', style: AppTextStyle.subTitle1M(),),
                     SizedBox(height: 10,),
                     SizedBox(
                       height: 50,
                       child: ListView.builder(
                         scrollDirection: Axis.horizontal,
                         itemCount: itemSize.length,
                           itemBuilder: (context, index){
                           return Container(
                             height: 50,
                               width: 50,
                               margin: EdgeInsets.symmetric(horizontal:5),
                               decoration: BoxDecoration(
                                   color: AppColors.greyLight,
                                   borderRadius: BorderRadius.circular(50)
                               ),
                               child: Center(child: Text(itemSize[index], style: AppTextStyle.subTitle2M(),)));
                           }
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 10,),
                 Text("Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's text ever since the 1500s, when an unknown printer took  a galley of type and scrambled it to make...",style: AppTextStyle.subTitle2R(),),
                 SizedBox(height: 10,),
                 Text('\u2022 100% Organic Cotton', style: AppTextStyle.subTitle2R(),),
                 Text('\u2022 Leather Trim',style: AppTextStyle.subTitle2R()),
                 Text('\u2022 Lifetime Guarantee',style: AppTextStyle.subTitle2R()),
                 Text('\u2022 Ipsum dolor sit amet',style: AppTextStyle.subTitle2R()),
                 SizedBox(height: 15,),
                 CustomProductDetails(),
                 SizedBox(height: 20,),
                 Divider(color: AppColors.greyLight,thickness: 1,),
                 CustomTxtBtn(
                   txtTitle: 'Shipping',
                   icon: Icons.local_shipping_rounded,
                   onPressed: (){
                     showDialog(context: context,
                         builder: (BuildContext context) => ShippingDialog()
                     );
                   },
                 ),
                 Divider(color: AppColors.greyLight,thickness: 1,),
                 CustomTxtBtn(
                   txtTitle: 'What Is Try And Buy ?',
                   icon: Icons.shopping_bag_outlined,
                   onPressed: (){
                     showDialog(context: context,
                         builder: (BuildContext context)=> TryAndBuyDialog());
                   },
                 ),
                 Divider(color: AppColors.greyLight,thickness: 1,),
                 SizedBox(height: 20,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     SizedBox(
                       height: 50,

                       child: ElevatedButton(
                           style: ElevatedButton.styleFrom(
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(30)
                               )
                           ),
                           onPressed: (){},
                           child: Row(
                             children: [
                               Icon(Icons.add_shopping_cart_outlined, size: 27,),
                               SizedBox(width: 10,),
                               Text('ADD To CART', style: AppTextStyle.subTitle1M(txtColor: AppColors.greyLightest),)
                             ],
                           )),
                     ),
                     SizedBox(
                       height: 50,
                       child: ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.green,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30)
                           )
                         ),
                           onPressed: (){},
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Icon(Icons.shopping_bag_outlined, size: 27,),
                               SizedBox(width: 10,),
                               Text('TRY & BUY', style: AppTextStyle.subTitle1M(txtColor: AppColors.greyLightest),)
                             ],
                           )),
                     ),
                   ],
                 )
               ],
             ),
           )
          ],
        ),
      ) ,
    ));
  }
}
