import 'package:flutter/material.dart';

class CustomColorPicker extends StatefulWidget {
  const CustomColorPicker({Key? key}) : super(key: key);

  @override
  State<CustomColorPicker> createState() => _CustomColorPickerState();
}

class _CustomColorPickerState extends State<CustomColorPicker> {
  List <Color>sundar = [Colors.red, Colors.blue, Colors.green, Colors.pink, Colors.lightGreen];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: sundar.length,
        itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: sundar[index],
          ),
        );
        }
    );
  }
}
