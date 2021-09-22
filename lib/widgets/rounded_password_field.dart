import 'package:flutter/material.dart';
import 'package:my_first_bank/constants/color_constants.dart';

import '../constants.dart';
import 'text_field_container.dart';

class RoundedPasswordField extends StatefulWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
   final TextEditingController con;

  RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.hintText,
    required this.con
   
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool ocultarContrasena = true;
  IconData ? icon;
  // TextEditingController? con;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
          obscureText: ocultarContrasena,
          onChanged: widget.onChanged,
          controller: widget.con,
          decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: TextStyle(
                fontSize: 14,
              ),
              icon: Icon(
                Icons.lock,
                color: kThirdColor,
              ),
              suffixIcon: IconButton(
                onPressed: (){setState((){
                    ocultarContrasena = !ocultarContrasena;
                    if (ocultarContrasena == false) {
                      icon = Icons.visibility_off;
                    } else {
                      icon = Icons.visibility;
                    }
                  });},
                icon: Icon(
                  icon ?? Icons.visibility,
                  color: kThirdColor,
                ),
              ),
              border: InputBorder.none)),
    );
  }
}
