import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tryplore_shop/common/common.dart';
import 'package:tryplore_shop/pages/onboarding_page/controllers/onboarding_controller.dart';

import '../../home_page/main_page.dart';
class OnboardingPage extends StatelessWidget {
   OnboardingPage({Key? key}) : super(key: key);
  final controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=> MainPage()));
        },
        child: Text("Next"),
      ),
      body: PageView.builder(
        controller: controller.pageController,
        onPageChanged: controller.selectedPageIndex,
        itemCount: controller.onboardingPages.length,
          itemBuilder: (context, index){
        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0XFF1D1D1D),
                Color(0XFF1D1D1D),
                Color(0XFFFEB300),
                Color(0XFFFEB300),
                Color(0XFF1D1D1D),
                Color(0XFF1D1D1D),
              ],
              stops: [0.0,0.3,0.3,0.7,0.7,1.0],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft
            )
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.appHorizontalSpacing),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(controller.onboardingPages[index].imageAsset),
                const SizedBox(height: 32,),
                Text(controller.onboardingPages[index].title, style: AppTextStyle.headline4M(txtColor: AppColors.greyLightest),),
                const SizedBox(height: 32,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 65),
                  child: Text(controller.onboardingPages[index].description,style: AppTextStyle.subTitle2M(txtColor: AppColors.greyLightest),textAlign: TextAlign.center,),
                ),
                SizedBox(height: 100,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(controller.onboardingPages.length,
                          (index) => Obx((){
                              return Container(
                                 height: 15,
                                 width: 15,
                                 margin: EdgeInsets.all(7),
                                 decoration:  BoxDecoration(
                                     shape: BoxShape.circle,
                                     color: controller.selectedPageIndex.value == index ? Colors.red : Colors.grey
                                 ),
                               );
                             }
                          ))
                ),
              ],
            ),
          ),
        );
      }),
    ));
  }
}
