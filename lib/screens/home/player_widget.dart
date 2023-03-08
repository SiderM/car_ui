import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({Key? key}) : super(key: key);

  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  final player = AudioPlayer();

  var localFile = "/Users/maksim/tz.mp3";

  Future<void> _setSource() async {
    await player.setSource(DeviceFileSource(localFile));
  }

  Future<void> _play() async {
    await player.stop();
    await _setSource();
    await player.play(DeviceFileSource(localFile));
  }

  double _sliderValue = 0;

  bool _isPlaying = false;

  void _setSliderValue(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  void _playerPlev() {
    print("Player Comand: Prev");
    setState(() {});
  }

  void _playerNext() {
    print("Player Comand: Next");
    setState(() {});
  }

  void _playerPlayPause() async {
    if (_isPlaying) {
      print("Player Comand: Pause");
      setState(() {
        _isPlaying = false;
      });
    } else {
      _play();
      print("Player Comand: Play");
      setState(() {
        _isPlaying = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
            style: TextStyle(
              fontSize: 25,
            ),
            'Song Name'),
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
            ],
          ),
        ),
      ],
    );
  }
}
