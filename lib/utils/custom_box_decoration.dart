import 'package:flutter/material.dart';

BoxDecoration customBoxDecoration = BoxDecoration(
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      blurRadius: 20,
      offset: Offset(0, 15),
      color: Colors.grey.withOpacity(.6),
      spreadRadius: -15,
    ),
  ],
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(30.0),
    bottomRight: Radius.circular(30.0),
  ),
);
