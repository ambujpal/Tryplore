import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';

class ReadOnlyTextField extends StatefulWidget {
  final String hintText;
  final String labelText;
  const ReadOnlyTextField({Key? key,
    this.labelText ="",
    this.hintText =""
  }) : super(key: key);

  @override
  State<ReadOnlyTextField> createState() => _ReadOnlyTextFieldState();
}

class _ReadOnlyTextFieldState extends State<ReadOnlyTextField> {
  @override
  Widget build(BuildContext context) {
    return  TextField(
      readOnly: true,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText:widget.labelText,
        hintStyle: const TextStyle(color: AppColors.greyDarkest),
        labelStyle: AppTextStyle.subTitle2M( fSize: 18,txtColor: AppColors.greyLight)
      ),
    );
  }
}
