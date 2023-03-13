import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tryplore_shop/common/common.dart';
import 'package:tryplore_shop/common/widgets/widets.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0XFF1D1D1D), Color(0XFF1D1D1D),
                  Color(0XFFFEB300), Color(0XFFFEB300),
                  Color(0XFF1D1D1D), Color(0XFF1D1D1D),
                ],
                stops: [0.0,0.3,0.3,0.7,0.7,1.0],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft
            )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.appHorizontalSpacing),
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(AppImages.icSlidebar),
                    const SizedBox(width: 10,),
                    SvgPicture.asset(AppImages.icLocation),
                  ],
                ),
                Text('Spring Collection', style: AppTextStyle.subTitle1M(txtColor:  AppColors.greyLightest),),
                const SizedBox(
                  width: 100,
                  child: Divider(height: 25, color: Colors.white,),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: SizedBox(
                      width: 100,
                      child: Divider(height: 25, color: Colors.white,)
                  ),
                ),
                Text('50%', style: AppTextStyle.headline1M(txtColor: AppColors.greyLightest),),
                Text('On selected product...', style: AppTextStyle.subTitle2M(txtColor: AppColors.greyLightest),),
                const SizedBox(height: 10,),
                const SizedBox(
                  width: 150,
                    child: CustomBtn(
                      btnColor: AppColors.greyLightest,
                      txtLabel: 'Shop Now',
                    )
                ),
                SizedBox(height: 30,),
                Center(
                  child: Wrap(
                    spacing: 50,
                    runSpacing: 20,
                    children: const [
                       CircleAvatar(
                        backgroundImage: AssetImage('assets/images/manbeard-is.jpg'),
                        backgroundColor: Colors.white,
                        radius: 65,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/skirts.jpg'),
                        backgroundColor: Colors.white,
                        radius: 65,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/skirts.jpg'),
                        backgroundColor: Colors.white,
                        radius: 65,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/skirts.jpg'),
                        backgroundColor: Colors.white,
                        radius: 65,
                      ),
                    ]
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
