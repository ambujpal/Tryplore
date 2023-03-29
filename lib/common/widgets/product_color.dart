import 'package:flutter/material.dart';

class ProductColor extends StatefulWidget {
  const ProductColor({Key? key}) : super(key: key);

  @override
  State<ProductColor> createState() => _ProductColorState();
}

class _ProductColorState extends State<ProductColor> {
  List<Color> itemColor = [Colors.red,Colors.blue,Colors.green,Colors.grey,Colors.orange,Colors.yellow];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
