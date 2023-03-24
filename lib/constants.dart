import 'package:flutter/material.dart';

const Color kThemeColor1 = Color(0xffffb200);
const Color kThemeColor2 = Color(0xfff05c42);
const Color kThemeColor3 = Color(0xff0f3041);

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kInputTextDecoration = InputDecoration(
  hintText: 'Enter values',
  hintStyle: TextStyle(
        fontFamily: 'Cantarell',
        fontSize: 16,
  ),
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Color(0xffffb200), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Color(0xffffb200), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);