import 'package:flutter/material.dart';

import 'package:tryplore_shop/common/common.dart';

class WishList extends StatefulWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  Color likeColor = AppColors.grey;
  bool isTap = false;
  List<String> productName= ["ProductName","ProductName","ProductName","ProductName","ProductName","ProductName","ProductName",];
  List<String> price = ['₹299','₹399','₹499','₹599','₹699','₹799','₹899',];
  List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzwWu7f0YjN-wYxx3ujoJZsNO-kETJdg0pxQ&usqp=CAU",
    "https://images.unsplash.com/photo-1611042553484-d61f84d22784?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZmFzaGlvbiUyMG1vZGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    'https://images.unsplash.com/photo-1628102160424-5f4ab3404829?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGZhc2hpb24lMjBtb2RlbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZmFzaGlvbiUyMG1vZGVsJTIwbWFsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1542749299-73253712c47d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZhc2hpb24lMjBtb2RlbCUyMGNvdXBsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    "https://images.unsplash.com/photo-1531370114630-ea11cde63962?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1vZGVsJTIwY291cGxlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvcHBpbmd8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.greyLightest,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios, size: 22,color: AppColors.grey,),
        title: Text('Wish List', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.appHorizontalSpacing),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('36 Items', style: AppTextStyle.subTitle2M(txtColor: AppColors.grey),),
                Row(
                  children: [
                    Text('Sort by:', style: AppTextStyle.subTitle2B(txtColor: AppColors.grey),),
                    SizedBox(width: 7,),
                    Text('Recently added', style: AppTextStyle.subTitle2M(txtColor: AppColors.grey),),
                  ],
                ),
              ],
            ),
            Divider(color: Colors.black, thickness: 5,),
            SizedBox(height: 20,),
            Expanded(
              child: GridView.builder(
                itemCount: productName.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 250,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  crossAxisCount: 2
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.network(imageList[index], height: 200, width: double.infinity, fit: BoxFit.cover,),
                          Positioned(
                            top:0, right:0,
                              child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      if(likeColor == AppColors.grey){
                                        likeColor= AppColors.error;
                                      }
                                      else{
                                        likeColor = AppColors.grey;
                                      }
                                    });
                                  },
                                  icon: Icon(Icons.favorite,),
                                color: likeColor,
                                tooltip: "Add to favorite",
                              )
                          )
                        ],
                      ),
                      Text(productName[index], style: AppTextStyle.subTitle1M(txtColor: AppColors.greyDark),),
                      Text(price[index], style: AppTextStyle.subTitle2M(txtColor: AppColors.grey),),

                    ],
                  );
                },
                  ),
            )
          ],
        ),
      ),
    ));
  }
}
