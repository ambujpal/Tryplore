import 'package:flutter/material.dart';

class OutlineBtn extends StatefulWidget {
  final String txtTitle;
  final Color ?txtColor;
  final Color ?btnColor;
  final Function()? onPressed;
  const OutlineBtn({Key? key,
    this.txtTitle= "",
    this.txtColor,
    this.btnColor,
    this.onPressed
  }) : super(key: key);

  @override
  State<OutlineBtn> createState() => _OutlineBtnState();
}

class _OutlineBtnState extends State<OutlineBtn> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        // fixedSize: Size(150, 50),
       foregroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
        side: BorderSide(color: Colors.blue,)
      ),
        onPressed: (){
        widget.onPressed!();
        },
        child: Text(widget.txtTitle, style: TextStyle( fontSize: 18),)
    );
  }
}
