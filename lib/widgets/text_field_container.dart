import 'package:flutter/material.dart';


import '../constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  final  Color? color;
  final double? hor;
  final double? vert;
  final double? marV;
  final double? marH;
  

  const TextFieldContainer({
    Key? key,
    required this.child,
    this.color,
    this.hor,
    this.vert,
    this.marV,
this.marH,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: marV??6,horizontal:marH??0 ),
      padding: EdgeInsets.symmetric(horizontal: hor??16, vertical:vert?? 5),
      decoration: BoxDecoration(
        color: color ?? kPrimaryLightColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: child,
    );
  }
}