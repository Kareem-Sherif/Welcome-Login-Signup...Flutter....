import 'package:flutter/material.dart';

const lightstyle = TextStyle(
  fontFamily: "BeauRivage",
  fontSize: 25,
  wordSpacing: 9,
  color: Colors.white,
);

const darkstyle = TextStyle(
  fontFamily: "BeauRivage",
  fontSize: 25,
  wordSpacing: 9,
  color: Colors.black,
);

const hint = TextStyle(
  fontFamily: "BeauRivage",
  fontSize: 17,
  letterSpacing: 3,
  color: Colors.black,
);

const darkelevatedbutton = ButtonStyle(
  backgroundColor: WidgetStatePropertyAll(Colors.purple),
  minimumSize: WidgetStatePropertyAll(Size(245, 50)),
);

const lightelevatedbutton = ButtonStyle(
  backgroundColor: WidgetStatePropertyAll(Color(0xFFE1BEE7)),
  minimumSize: WidgetStatePropertyAll(Size(245, 50)),
);
