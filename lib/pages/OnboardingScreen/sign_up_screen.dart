import 'package:flutter/material.dart';
import 'package:tryplore_shop/pages/OnboardingScreen/forgot_password_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Container(
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(colors: [
        //     Color.fromARGB(255, 248, 246, 246),
        //     Color.fromARGB(255, 248, 246, 246),
        //     color(Colors.blue.shade300),
        //     color(Colors.blue.shade300),
        //     // Color(0XFFFEB300),
        //     Color.fromARGB(255, 248, 246, 246),
        //     Color.fromARGB(255, 248, 246, 246),
        //   ], stops: [
        //     0.0,
        //     0.3,
        //     0.3,
        //     0.7,
        //     0.7,
        //     1.0
        //   ], begin: Alignment.topRight, end: Alignment.bottomLeft),
        // ),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1514136649217-b627b4b9cfb2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG1vZGVsJTIwYmxhY2t8ZW58MHx8MHx8&w=1000&q=80'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 110.0, left: 30),
                child: Text(
                  'Create\n your account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your Name",
                        labelText: "Your Name",
                        labelStyle: new TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your email",
                        labelText: "Email",
                        labelStyle: new TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                        labelStyle: new TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CheckboxListTile(
                value: isChecked,
                title: Text(
                    'By Signing up you agree to the terms of\nservices and privacy policy'),
                onChanged: (newBool) {
                  setState(
                    () {
                      isChecked = newBool!;
                    },
                  );
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              ButtonOnLoginScreen(
                title: 'Login',
                buttonBgColor: Colors.black38,
              ),
              ButtonOnLoginScreen(
                title: 'Login In with Facebook',
                buttonBgColor: Colors.blue.shade400,
                textColor: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Lets Go !",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ),
                        );
                      },
                      child: Text(
                        'Explore',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonOnLoginScreen extends StatelessWidget {
  final String? title;
  final Color? buttonBgColor;
  final Color? textColor;

  const ButtonOnLoginScreen({
    super.key,
    this.title,
    this.buttonBgColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      width: MediaQuery.of(context).size.width / 0.2,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          title!,
          style: TextStyle(color: textColor, fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonBgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
