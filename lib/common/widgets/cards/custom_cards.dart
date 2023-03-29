import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';

class CustomCardText extends StatefulWidget {
  final String txtTitle;
  final Color? txtColor;
  final IconData? icon;

  const CustomCardText({Key? key, this.txtTitle = "", this.txtColor, this.icon})
      : super(key: key);

  @override
  State<CustomCardText> createState() => _CustomCardTextState();
}

class _CustomCardTextState extends State<CustomCardText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: InkWell(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.txtTitle,
                  style: AppTextStyle.subTitle1M(txtColor: widget.txtColor!),
                ),
                Icon(
                  widget.icon,
                  size: 18,
                ),
              ],
            ),
            Divider(
              color: AppColors.greyLight,
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}
