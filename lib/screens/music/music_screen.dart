import 'package:flutter/material.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  double _sliderValue = 0;

  bool _isPlaying = false;

  void _setSliderValue(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  void _goToPlaylist() {
    print("Player Comand: Go To Playlist");
    setState(() {});
  }

  void _playerPlev() {
    print("Player Comand: Prev");
    setState(() {});
  }

  void _playerNext() {
    print("Player Comand: Next");
    setState(() {});
  }

  void _playerPlayPause() {
    if (_isPlaying) {
      print("Player Comand: Pause");
      setState(() {
        _isPlaying = false;
      });
    } else {
      print("Player Comand: Play");
      setState(() {
        _isPlaying = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.audiotrack,
          size: 200,
        ),
        const Text(
            style: TextStyle(
              fontSize: 25,
            ),
            'Song Name'),
        const Text(
            style: TextStyle(
              fontSize: 20,
            ),
            'Song Artist'),
        Slider(
          min: 0,
          max: 100,
          value: _sliderValue,
          onChanged: _setSliderValue,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('0:00'),
              Text('100:00'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: _playerPlev,
                icon: const Icon(
                  Icons.skip_previous,
                ),
              ),
              IconButton(
                onPressed: _playerPlayPause,
                icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
              ),
              IconButton(
                onPressed: _playerNext,
                icon: const Icon(
                  Icons.skip_next,
                ),
              ),
              IconButton(
                onPressed: _goToPlaylist,
                icon: const Icon(
                  Icons.playlist_play,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
