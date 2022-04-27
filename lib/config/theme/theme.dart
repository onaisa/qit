import 'package:flutter/material.dart';

ThemeData MyDarkThem = ThemeData();

ThemeData MyLigthThem = ThemeData(
    primaryColor: primaryColor,
    primarySwatch: Colors.grey,
    iconTheme: IconThemeData(color: Colors.white),
    appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white)));
Color primaryColor = const Color(0xFF333739);
