import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  navigationBarTheme: const NavigationBarThemeData(
    indicatorColor: Colors.orange,
    labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
  ),
  iconTheme: const IconThemeData(size: 40, color: Colors.orange),
  sliderTheme: const SliderThemeData(
    activeTrackColor: Colors.orange,
    thumbColor: Colors.orange,
  ),
);
