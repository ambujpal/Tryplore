import 'package:flutter/material.dart';

class OutlineBtnWithIcon extends StatefulWidget {
  final String txtTitle;
  final Color ?txtColor;
  final Color ?btnColor;
  final Function()? onPressed;
  IconData ?ic;
   OutlineBtnWithIcon({Key? key,
    this.txtTitle= "",
    this.txtColor,
    this.btnColor,
    this.onPressed,
    this.ic
  }) : super(key: key);

  @override
  State<OutlineBtnWithIcon> createState() => _OutlineBtnWithIconState();
}

class _OutlineBtnWithIconState extends State<OutlineBtnWithIcon> {
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
        child: Row(
          children: [
            Icon(widget.ic),
            SizedBox(width: 10,),
            Text(widget.txtTitle, style: TextStyle( fontSize: 18),),
          ],
        )
    );
  }
}
