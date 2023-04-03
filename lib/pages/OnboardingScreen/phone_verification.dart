import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tryplore_shop/common/widgets/button/custom_elevated_button.dart';
import 'package:tryplore_shop/pages/home_page/home_page.dart';

import '../../common/constant/app_textstyle.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  State<PhoneVerification> createState() => Phone_VerificationState();
}

class Phone_VerificationState extends State<PhoneVerification> {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 20, top: 100, right: 20),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Text(
                    "Enter the code\nto verify your phone number",
                    style: AppTextStyle.headline3M(txtColor: Colors.black),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "If you need help to resetting your password, we can"
                    "help by sending you a  link to reset it ",
                    style: AppTextStyle.bodyM(txtColor: Colors.grey),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 60,
                        height: 65,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin1) {},
                          style:
                              AppTextStyle.subTitle1M(txtColor: Colors.black),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        height: 65,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin2) {},
                          style:
                              AppTextStyle.subTitle1M(txtColor: Colors.black),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        height: 65,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin3) {},
                          style:
                              AppTextStyle.subTitle1M(txtColor: Colors.black),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        height: 65,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin4) {},
                          style:
                              AppTextStyle.subTitle1M(txtColor: Colors.black),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text("Send a new code !"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  CustomElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => HomePage(),
                        ),
                      );
                    },
                    btnColor: Colors.blue,
                    txtLabel: "Submit",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
