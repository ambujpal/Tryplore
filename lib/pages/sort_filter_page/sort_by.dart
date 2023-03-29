import 'package:flutter/material.dart';

import 'package:tryplore_shop/common/common.dart';

class SortBy extends StatefulWidget {

  const SortBy({Key? key}) : super(key: key);

  @override
  State<SortBy> createState() => _SortByState();
}

class _SortByState extends State<SortBy> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.greyLightest,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 22,
          color: Colors.blueAccent,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.meeting_room_outlined,
                color: Colors.blueAccent,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.location_on_outlined,
                  color: Colors.blueAccent, size: 30)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu, color: Colors.blueAccent, size: 30))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.appHorizontalSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dresses',
              style: AppTextStyle.headline4B(txtColor: AppColors.greyDark),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '2544 items found',
              style: AppTextStyle.subTitle2M(txtColor: AppColors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 221,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.sort,
                              size: 30,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Sort',
                              style: AppTextStyle.subTitle1M(
                                  txtColor: AppColors.greyDarkest),
                            )
                          ],
                        ))),
                SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 221,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.filter_alt_outlined,
                              size: 30,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Filter',
                              style: AppTextStyle.subTitle1M(
                                  txtColor: AppColors.greyDarkest),
                            )
                          ],
                        )))
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
              child: GridView.builder(
                itemCount: 20,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 290
                  ), 
                  itemBuilder:(context, index){
                    return Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                            children: [
                              Image.network('https://cdn.shopify.com/s/files/1/0752/6435/products/HERO_3060bacb-5243-48fa-9460-08a6dac32b1e.jpg?v=1666168078'),
                              Positioned(right:0,
                                  child: Container(
                                    height:40,
                                    width:40,
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: AppColors.greyLightest,
                                      borderRadius: BorderRadius.circular(50)

                                    ),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.favorite,color: AppColors.primary,),
                                ),
                              ))
                        ]),
                        SizedBox(height: 7,),
                        Text('Product Name', style: AppTextStyle.subTitle1M(txtColor: AppColors.greyDark),),
                        Text('Price', style: AppTextStyle.subTitle1M(txtColor: AppColors.greyDark),)
                      ],
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    ));
  }
}