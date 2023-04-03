import 'package:flutter/material.dart';

// import '../../constant/app_colors.dart';
import '../../constant/app_textstyle.dart';

class CustomBtn extends StatelessWidget {
  final String txtLabel;
  final Color? txtColor;
  final Color? btnColor;
  final Function()? onPressed;

  const CustomBtn(
      {Key? key,
      this.txtLabel = 'Button Title',
      this.txtColor,
      this.btnColor,
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
              Text(
                txtLabel,
                style: AppTextStyle.subTitle2M(txtColor: txtColor!),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }
}
