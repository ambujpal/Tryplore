import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tryplore_shop/common/common.dart';
import 'package:tryplore_shop/models/homepage_model.dart';
import 'package:tryplore_shop/utils/routes_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categoryList = [
    HomePageModel(image: 'assets/images/manbeard-is.jpg', category: "Men's"),
    HomePageModel(image: 'assets/images/skirts.jpg', category: "Women's"),
    HomePageModel(image: 'assets/images/kids2 1.png', category: "Kids"),
    HomePageModel(
        image: 'assets/images/accessories.jpg', category: "Accessories"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0XFF1D1D1D),
          Color(0XFF1D1D1D),
          Color(0XFFFEB300),
          Color(0XFFFEB300),
          Color(0XFF1D1D1D),
          Color(0XFF1D1D1D),
        ], stops: [
          0.0,
          0.3,
          0.3,
          0.7,
          0.7,
          1.0
        ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.appHorizontalSpacing),
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(AppImages.icSlidebar),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(AppImages.icLocation),
                  ],
                ),
                Text(
                  'Spring Collection',
                  style:
                      AppTextStyle.subTitle1M(txtColor: AppColors.greyLightest),
                ),
                const SizedBox(
                  width: 100,
                  child: Divider(
                    height: 25,
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: SizedBox(
                      width: 100,
                      child: Divider(
                        height: 25,
                        color: Colors.white,
                      )),
                ),
                Text(
                  '50%',
                  style:
                      AppTextStyle.headline1M(txtColor: AppColors.greyLightest),
                ),
                Text(
                  'On selected product...',
                  style:
                      AppTextStyle.subTitle2M(txtColor: AppColors.greyLightest),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: 150,
                ),
                const SizedBox(height: 30),
                SizedBox(
                    height: 355,
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 50,
                      mainAxisSpacing: 20,
                      children: List.generate(categoryList.length, (index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RouteName.productPage);
                          },
                          child: CircleAvatar(
                            backgroundColor: AppColors.greyLightest,
                            radius: 75,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(categoryList[index].image),
                              backgroundColor: Colors.white,
                              radius: 65,
                              child: Container(
                                  height: 130,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(70),
                                    color: Colors.black.withOpacity(0.4),
                                  ),
                                  child: Center(
                                      child: Text(
                                    categoryList[index].category,
                                    style: AppTextStyle.subTitle1M(
                                        txtColor: AppColors.greyLightest),
                                  ))),
                            ),
                          ),
                        );
                      }),
                    )),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.greyLight,
                  child: Center(
                      child: Text(
                    'Free shipping on order above \u{20B9}500',
                    style: AppTextStyle.subTitle1M(
                        txtColor: AppColors.greyDarkest),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
