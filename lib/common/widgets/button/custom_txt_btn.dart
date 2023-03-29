import 'package:flutter/material.dart';
import 'package:tryplore_shop/common/common.dart';

class CustomTxtBtn extends StatefulWidget {
  String txtTitle;
  IconData? icon;
  Function()? onPressed;
   CustomTxtBtn({Key? key,
    this.txtTitle = "Btn Name",
    this.icon,
    this.onPressed
  }) : super(key: key);

  @override
  State<CustomTxtBtn> createState() => _CustomTxtBtnState();
}

class _CustomTxtBtnState extends State<CustomTxtBtn> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
        child: Row(
          children: [
            Icon(widget.icon, size: 30,color: Colors.black.withOpacity(0.7),),
            SizedBox(width: 5,),
            Text(widget.txtTitle, style: AppTextStyle.subTitle1M(),)
          ],
        ));
  }
}
