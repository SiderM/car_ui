import 'package:car_ui/screens/home/map_widget.dart';
import 'package:car_ui/screens/home/player_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MapWidget(),
          const PlayerWidget(),
        ],
      ),
    );
  }
}
