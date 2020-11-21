/*
This is a custom Input class that requires 
prefix text and Icon as parameter
*/
import 'package:flutter/material.dart';

class CustomInputTextField extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;

  const CustomInputTextField({
    Key key,
    @required this.hintText,
    @required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[100],
        prefixIcon: prefixIcon,
        hintText: hintText,
        focusColor: Colors.green,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.green,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.grey[200],
          ),
        ),
      ),
    );
  }
}
