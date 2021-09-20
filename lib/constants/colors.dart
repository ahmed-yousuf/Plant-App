import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const Color green = Color(0xff0C9869);
const Color lightgreen = Color(0xff85CBB4);
const Color greyText = Color(0xff3C4046);
const Color shadoColor = Color(0xffDBEDEC);

const TextStyle headerGrey = TextStyle(
  fontSize: 24,
  color: greyText,
  fontWeight: FontWeight.bold,
);
const TextStyle headerWhite = TextStyle(
  fontSize: 35,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

const TextStyle titleButton = TextStyle(
  fontSize: 16,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
const TextStyle productStyle = TextStyle(
  fontSize: 18,
  color: greyText,
  fontWeight: FontWeight.w400,
);

const TextStyle priceStyle = TextStyle(
  fontSize: 18,
  color: green,
  fontWeight: FontWeight.w500,
);

const TextStyle tagStyle = TextStyle(
  fontSize: 18,
  color: lightgreen,
  fontWeight: FontWeight.w400,
);

const BoxShadow shadows = BoxShadow(
  color: lightgreen,
  offset: Offset(1, 5),
  spreadRadius: 1,
  blurRadius: 30,
);
