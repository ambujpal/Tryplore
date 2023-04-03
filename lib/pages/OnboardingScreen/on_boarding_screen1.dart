import 'package:flutter/material.dart';
import 'package:tryplore_shop/pages/OnboardingScreen/log_in_screen.dart';

class OnBoarding_1 extends StatefulWidget {
  const OnBoarding_1({super.key});

  @override
  State<OnBoarding_1> createState() => _OnBoarding_1State();
}

class _OnBoarding_1State extends State<OnBoarding_1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1514136649217-b627b4b9cfb2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG1vZGVsJTIwYmxhY2t8ZW58MHx8MHx8&w=1000&q=80'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 20,
                    left: 20),
                child: Column(
                  children: [
                    Text(
                      'Shopping',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Shopping made easy',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 100),
                    LoginElevatedButton(
                      buttonBgColor: Colors.amber,
                      buttonLabel: 'Sign Up with Email',
                      buttonIcon: (Icons.email_outlined),
                    ),
                    SizedBox(height: 20),
                    LoginElevatedButton(
                      buttonBgColor: Colors.white,
                      buttonLabel: 'Continue with Facebook',
                      buttonIcon: (Icons.facebook),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginElevatedButton extends StatelessWidget {
  // ignore: todo
  //TODO To make a Paramters Optional assign it in {} and at the time of declare there is ? added in Variables ex :   final String? buttonLabel;
  final String? buttonLabel;
  final IconData? buttonIcon;
  final Color? buttonBgColor;

  LoginElevatedButton({
    super.key,
    this.buttonLabel,
    this.buttonIcon,
    this.buttonBgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            label: Text(
              buttonLabel!,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            icon: Icon(
              buttonIcon,
              color: Colors.black,
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonBgColor,
              fixedSize: Size(340, 50),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
