import 'package:flutter/material.dart';

class CustomRangeSlider extends StatefulWidget {
  const CustomRangeSlider({Key? key}) : super(key: key);

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  double start = 10;
  double end = 100000;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RangeSlider(
          max: 100000,
          divisions: 10,
          values: RangeValues(start, end),
          labels: RangeLabels(start.round().toString(), end.round().toString()),
          onChanged: (RangeValues value){
            setState(() {
              start = value.start;
              end = value.end;
            });
          },
        ),
      ],
    );
  }
}
