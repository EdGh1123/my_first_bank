import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonApp extends StatelessWidget {
  Color color;
  String text;
  IconData ? icono;
  Function onPressed;

  ButtonApp({
    required this.color,
    required this.text,
    this.icono,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              widthFactor: 1.2,
              child: Container(
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ),
            ),
            Align(
              child: Container(
                  height: 50,
                  child: Icon(
                      icono,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
            )
          ],
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )
            )
          )
        );
  }
}
