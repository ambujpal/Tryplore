import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';

class CustomText extends StatefulWidget {
  String txtTitle, txtLabel;
  Color titleColor, labelColor;
   CustomText({Key? key,
   this.txtTitle ="",
   this.txtLabel ="",
     this.labelColor = AppColors.grey,
     this.titleColor = AppColors.grey
  }) : super(key: key);

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.txtTitle, style: AppTextStyle.subTitle1M(txtColor: widget.titleColor),),
        Text(widget.txtLabel, style: AppTextStyle.subTitle1M(txtColor:  widget.labelColor),)
      ],
    );
  }
}
