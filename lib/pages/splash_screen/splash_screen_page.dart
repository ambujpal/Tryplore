import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';
import 'package:tryplore_shop/common/widgets/button/custom_elevated_button.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xFF1D1D1D),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.appHorizontalSpacing),
        child: Column(
          children: [
            Text('MEY',style: AppTextStyle.headline1M(txtColor: AppColors.greyLightest)),
            Wrap(
             runSpacing: 20,
              children: [
                CustomElevatedButton(
                  txtLabel: 'Sign up with Email',
                  txtColor: AppColors.greyDarkest,
                  btnColor: AppColors.primary,
                  icons:Icons.email_outlined,
                  iconColor: AppColors.greyDarkest,
                ),
                CustomElevatedButton(
                  txtLabel: 'Continue with facebook',
                    btnColor: AppColors.greyLightest,
                    icons: Icons.facebook_outlined,
                    iconColor: AppColors.greyDarkest
                )
              ],
            )
          ],
    ),
      ),
    ));
  }
}