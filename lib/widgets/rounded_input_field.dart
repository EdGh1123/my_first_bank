import 'package:flutter/material.dart';
import 'package:my_first_bank/constants/color_constants.dart';


import '../constants.dart';
import 'text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final TextEditingController con;

  const RoundedInputField({
    Key? key, 
    required this.hintText, 
    this.icon = Icons.person, 
    required this.onChanged, 
    required this.keyboardType,
    required this.con,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        keyboardType: keyboardType,
        onChanged: onChanged,
        controller: con,
        decoration: InputDecoration(
          icon: Icon(icon, color: kThirdColor,),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
          ),
          border: InputBorder.none
        ),
      ),
    );
  }
}