import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';

class CustomElevatedButton extends StatelessWidget {
  final IconData? icons;
  final String txtLabel;
  final Color? txtColor;
  final Color? btnColor;
  final Color? iconColor;
  final Function()? onPressed;

  CustomElevatedButton(
      {Key? key,
      this.icons,
      this.txtLabel = 'Button Title',
      this.txtColor,
      this.btnColor,
      this.iconColor,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          onPressed!();
        },
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          primary: btnColor,
        ),
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icons,
                size: 27,
                color: iconColor,
              ),
              SizedBox(
                width: 10,
              ),
              Center(
                  child: Text(
                txtLabel,
                style: AppTextStyle.subTitle2M(txtColor: AppColors.greyDarkest),
                textAlign: TextAlign.center,
              ))
            ],
          ),
        ));
  }
}
