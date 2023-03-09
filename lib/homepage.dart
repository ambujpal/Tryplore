import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              Color(0xFF1D1D1D),
                Color(0xFFFEB300),
                Color(0xFFFEB300),
              Color(0xFF1D1D1D),
                Color(0xFF1D1D1D)
              ],
            stops: [
              0.2,
              0.4,
              0.4,
              0.7,
              0.7
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft
          )
        ),
      ),
    ));
  }
}
