import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';
import 'package:tryplore_shop/common/widgets/button/custom_elevated_button.dart';
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List onBoardingdata = [
    {
      "image": '',
      "title": 'Care Your Family',
      "description": 'The Process can include educating new'
    },
    {
      "image": '',
      "title": 'Welcome on second screen ',
      "description": 'The Process can include educating new'
    },
    {
      "image": '',
      "title": 'Welcome on third screen',
      "description": 'The Process can include educating new'
    },
  ];
  ContinueMethod(){}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient:   LinearGradient(
          colors: [
            Color(0xFF1D1D1D).withOpacity(0.8),
            Color(0xFF1D1D1D).withOpacity(0.8),
            Color(0xFFFEB300).withOpacity(0.3),
            Color(0xFFFEB300).withOpacity(0.3),
            Color(0xFF1D1D1D).withOpacity(0.8),
            Color(0xFF1D1D1D).withOpacity(0.8),
          ],
          stops: [0.0,0.3,0.3,0.7,0.7,1.0],
          begin: FractionalOffset.topRight,
          end: FractionalOffset.bottomLeft
        )
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
             body: Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     TextButton(onPressed: ContinueMethod(),
                          child: Text('Skip', style: AppTextStyle.subTitle2M(txtColor: AppColors.greyLightest),)),
                   ],
                 ),
               ],
             )

        ),
      ),
    );
  }
}
