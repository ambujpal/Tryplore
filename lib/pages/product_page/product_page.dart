import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';
import 'package:tryplore_shop/models/product_page.dart';
import 'package:tryplore_shop/models/product_page1.dart';
import 'package:tryplore_shop/utils/routes_name.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<ProductImage> imageList = [
    ProductImage(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScS4USn8inLOSZCbWEUrF1Kkiwlh7Vjh-M3LYlkvPz&s'),
    ProductImage(image: 'https://images.unsplash.com/photo-1420593248178-d88870618ca0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bmF0dXJhbHxlbnwwfHwwfHw%3D&w=1000&q=80'),
    ProductImage(image: 'https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg'),
    ProductImage(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxiNh9zlu3087OjP9rz63lzTwYt9w7C0v10O7znJEV&s'),
    ProductImage(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwNmi0cwVWpzedJIYxFH-GPHDeZljAp-ymG9lUFA4U&s')
  ];
   List<ProductPage1> productDetails = [
     ProductPage1(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScS4USn8inLOSZCbWEUrF1Kkiwlh7Vjh-M3LYlkvPz&s', productName: 'productName', price: '₹299'),
     ProductPage1(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScS4USn8inLOSZCbWEUrF1Kkiwlh7Vjh-M3LYlkvPz&s', productName: 'productName', price: '₹399'),
     ProductPage1(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScS4USn8inLOSZCbWEUrF1Kkiwlh7Vjh-M3LYlkvPz&s', productName: 'productName', price: '₹499'),
     ProductPage1(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScS4USn8inLOSZCbWEUrF1Kkiwlh7Vjh-M3LYlkvPz&s', productName: 'productName', price: '₹599'),
     ProductPage1(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScS4USn8inLOSZCbWEUrF1Kkiwlh7Vjh-M3LYlkvPz&s', productName: 'productName', price: '₹699'),
     ProductPage1(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScS4USn8inLOSZCbWEUrF1Kkiwlh7Vjh-M3LYlkvPz&s', productName: 'productName', price: '₹799'),
     ProductPage1(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScS4USn8inLOSZCbWEUrF1Kkiwlh7Vjh-M3LYlkvPz&s', productName: 'productName', price: '₹899'),
   ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(

        elevation: 0,
        backgroundColor: AppColors.greyLightest,
        leading: Icon(Icons.arrow_back_ios, size: 22, color:Colors.blue,),
        actions: [
          Icon(Icons.meeting_room_outlined, color: Colors.blue,size: 27,),
          Icon(Icons.location_on_outlined,color: Colors.blue,size: 27,),
          Icon(Icons.menu, color: Colors.blue,size: 27,),
          SizedBox(width: 10,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageList.length,
                    itemBuilder:(context, index){
                    return Image.network(imageList[index].image, width: MediaQuery.of(context).size.width,fit: BoxFit.cover,);
                    }
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppDimens.appHorizontalSpacing),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Women's Clothings", style: AppTextStyle.headline4M(txtColor: Colors.black),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.tune, color: Colors.blue,))
                    ],
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 500,
                    child: Expanded(
                      child: GridView.builder(
                        itemCount: productDetails.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 200,
                            mainAxisSpacing: 15,
                            crossAxisCount: 2,
                            crossAxisSpacing: 15
                          ),
                          itemBuilder:(context, index){
                            return InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, RouteName.productDetails);
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                      child: Stack(children: [
                                        Image.network(productDetails[index].image ,height: 150,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
                                        Positioned(right: 0,
                                            child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline , color: AppColors.primary,)))
                                      ],)),
                                  Text(productDetails[index].productName, style: AppTextStyle.subTitle1M(),),
                                  Text(productDetails[index].price.toString(), style: AppTextStyle.subTitle1M(),),
                                ],
                              ),
                            );
                          }
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
