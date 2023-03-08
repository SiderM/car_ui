import 'package:car_ui/screens/home/home_screen.dart';
import 'package:car_ui/screens/music/music_screen.dart';
import 'package:car_ui/styles.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CarUIApp());

class CarUIApp extends StatelessWidget {
  const CarUIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: const CarUI(),
    );
  }
}

class CarUI extends StatefulWidget {
  const CarUI({super.key});

  @override
  State<CarUI> createState() => _CarUIState();
}

class _CarUIState extends State<CarUI> {
  int _currentScreenIndex = 0;

  void _setCurrentScreenIndex(int index) {
    setState(() => _currentScreenIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) => _setCurrentScreenIndex(index),
        selectedIndex: _currentScreenIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.crop_din_outlined),
            label: 'Инфо',
          ),
          NavigationDestination(
            icon: Icon(Icons.navigation_outlined),
            label: 'Навигация',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.library_music_outlined,
            ),
            label: 'Музыка',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.drive_eta_outlined,
            ),
            label: 'Авто',
          ),
        ],
      ),
      body: <Widget>[
        const HomeScreen(),
        const HomeScreen(),
        const MusicScreen(),
        const HomeScreen(),
      ][_currentScreenIndex],
    );
  }
}
