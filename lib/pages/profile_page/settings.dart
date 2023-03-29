import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';

import '../../common/widgets/cards/custom_cards.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.greyLightest,
        leading: const Icon(Icons.arrow_back_ios, color: AppColors.greyDark,size: 22,),
        title: Text('Settings', style: AppTextStyle.subTitle1M(txtColor: AppColors.greyDark),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.appHorizontalSpacing),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Payment',style: AppTextStyle.headline4M(),),
                const SizedBox(height: 30,),
                CustomCardText(
                  txtTitle: 'Save Card',
                  txtColor: AppColors.greyDark,
                  icon: Icons.arrow_forward_ios,
                ),
                CustomCardText(
                  txtTitle: 'Automatic Payment',
                  txtColor: AppColors.greyDark,
                  icon: Icons.arrow_forward_ios,
                ),
                const SizedBox(height: 10,),
                Text('Security',style: AppTextStyle.headline4M(),),
                const SizedBox(height: 30,),
                CustomCardText(
                  txtTitle: 'Change Password',
                  txtColor: AppColors.greyDark,
                  icon: Icons.arrow_forward_ios,
                ),
                CustomCardText(
                  txtTitle: 'Manage App Lock',
                  txtColor: AppColors.greyDark,
                  icon: Icons.arrow_forward_ios,
                ),
                const SizedBox(height: 15,),
                Text('General',style: AppTextStyle.headline4M(),),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Notification', style: AppTextStyle.subTitle1M(txtColor: AppColors.greyDark),),
                    Switch(
                        activeColor:Colors.blue,
                        value: switchValue,
                        onChanged: (bool value){
                          setState(() {
                            switchValue = value;
                          });
                        }
                    )
                  ],
                ),
                Divider(color: AppColors.greyLight,thickness: 1,),
                SizedBox(height: 20,),
                CustomCardText(
                  txtTitle: 'Address',
                  txtColor: AppColors.greyDark,
                  icon: Icons.arrow_forward_ios,
                ),
                const SizedBox(height: 0,),
                 CustomCardText(
                  txtTitle: 'Help & Support',
                  txtColor: AppColors.greyDark,
                  icon: Icons.arrow_forward_ios,
                ),
                 CustomCardText(
                  txtTitle: 'Logout',
                  txtColor: AppColors.error,
                  icon: Icons.arrow_forward_ios,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
