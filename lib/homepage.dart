import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
