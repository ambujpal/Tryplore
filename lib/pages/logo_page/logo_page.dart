import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tryplore_shop/utils/routes_name.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({Key? key}) : super(key: key);

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
        ()=> Navigator.pushNamed(context, RouteName.onboardPage)
    );
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    ));
  }
}
