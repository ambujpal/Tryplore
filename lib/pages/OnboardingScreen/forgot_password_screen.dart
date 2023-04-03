import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tryplore_shop/pages/OnboardingScreen/onboarding_screen.dart';
import 'package:tryplore_shop/pages/OnboardingScreen/phone_verification.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forgot Password ?',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  'Forgot password using phone number ',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone_iphone_outlined),
                      hintText: "phone",
                      labelText: "",
                      // icon: Icon(Icons.phone_iphone_outlined),
                      labelStyle: new TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.all(40),
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    color: Colors.black,
                    shape: StadiumBorder(),
                  ),
                  child: TextButton(
                      child: Text(
                        'Send',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => PhoneVerification(),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
