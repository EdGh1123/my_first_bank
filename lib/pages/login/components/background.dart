import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:my_first_bank/controllers/login/login_controller.dart';

class Background extends StatefulWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {


LoginController _con=new LoginController();


@override
void initState() { 
  super.initState();
  
  SchedulerBinding.instance?.addPostFrameCallback((timeStamp) { 
   _con.init(context);
  });}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold ( key: _con.key,
    
    body:
      Container(
       
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: -125,
              left: -118,
              child:Image.asset(
                "assets/img/circle1.png",
                width: size.width * 0.9,
              ),
            ),
            Positioned(
              top: 30,
              left: 210,
              child:Image.asset(
                "assets/img/circle2.png",
                width: size.width * 1,
              ),
            ),
            Positioned(
              top: 250,
              left: -159,
              child:Image.asset(
                "assets/img/circle3.png",
                width: size.width * 1,
              ),
            ),
            Positioned(
              top: 406,
              left: 124,
              child:Image.asset(
                "assets/img/circle4.png",
                width: size.width * 1,
              ),
            ),
            widget.child,
          ],
        ),
      ),
    );
  }
}