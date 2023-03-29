import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';
import 'package:tryplore_shop/common/widgets/cards/custom_cards.dart';
import 'package:tryplore_shop/common/widgets/text_field/read_only_textfield.dart';
import 'package:tryplore_shop/pages/profile_page/my_orders.dart';
import 'package:tryplore_shop/pages/profile_page/settings.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            color: const Color(0XFF80ACFD),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Profile', style: AppTextStyle.subTitle1M(txtColor: AppColors.greyLightest),),
                  const SizedBox(height: 10,),
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/manbeard-is.jpg',),
                  ),
                  const SizedBox(height: 10,),
                  Text('Sundar Moorthy', style: AppTextStyle.subTitle2M(txtColor: AppColors.greyLightest),),
                  Text('sundarmoorty@gmail.com', style: AppTextStyle.subTitle2M(txtColor: AppColors.greyLightest),)
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.appHorizontalSpacing),
            child: Container(child: Column(
              children: [
                Text('Account Information', style: AppTextStyle.headline4M(txtColor: AppColors.greyDarkest)),
                const ReadOnlyTextField(
                  hintText: 'Sundar Moorthy',
                  labelText: 'Full Name',
                ),
                const SizedBox(height: 7,),
                const ReadOnlyTextField(
                  hintText: 'sundarmoorthy@gmail.com',
                  labelText: 'Email',
                ),
                const SizedBox(height: 7,),
                const ReadOnlyTextField(
                  hintText: 'Arey Mumbai Maharatstra',
                  labelText: 'Addres',
                ),
                const SizedBox(height: 25,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyOrders()));
                  },
                  child: const CustomCardText(
                    txtTitle: 'My Order',
                    txtColor: AppColors.primary,
                    icon: Icons.arrow_forward_ios,
                  ),
                ),
                const CustomCardText(
                  txtTitle: 'Payment Method',
                  txtColor: AppColors.greyDark,
                  icon: Icons.arrow_forward_ios,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SettingsPage()));
                  },
                  child: const CustomCardText(
                    txtTitle: 'Settings',
                    txtColor: AppColors.greyDark,
                    icon: Icons.arrow_forward_ios,
                  ),
                ),
              ],
            )
            ),
          ),
        ],
      ),
    ));
  }
}
