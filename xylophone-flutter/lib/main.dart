import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioPlayer();

  void setupAudioPlayer(int note) async {
    await player.setSource(AssetSource('note${note}.wav'));
    player.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                TextButton(
                  // style: ButtonStyle(),
                  onPressed: () {
                    setupAudioPlayer(1);
                    // await player.setSource(AssetSource('assets/note1.wav'));
                  },
                  child: Text('Note1'),
                ),
                TextButton(
                  onPressed: () {
                    setupAudioPlayer(2);
                    // await player.setSource(AssetSource('assets/note1.wav'));
                  },
                  child: Text('Note2'),
                ),
                TextButton(
                  onPressed: () {
                    setupAudioPlayer(3);
                    // await player.setSource(AssetSource('assets/note1.wav'));
                  },
                  child: Text('Note3'),
                ),
                TextButton(
                  onPressed: () {
                    setupAudioPlayer(4);
                    // await player.setSource(AssetSource('assets/note1.wav'));
                  },
                  child: Text('Note4'),
                ),
                TextButton(
                  onPressed: () {
                    setupAudioPlayer(5);
                    // await player.setSource(AssetSource('assets/note1.wav'));
                  },
                  child: Text('Note5'),
                ),
                TextButton(
                  onPressed: () {
                    setupAudioPlayer(6);
                    // await player.setSource(AssetSource('assets/note1.wav'));
                  },
                  child: Text('Note6'),
                ),
                TextButton(
                  onPressed: () {
                    setupAudioPlayer(7);
                    // await player.setSource(AssetSource('assets/note1.wav'));
                  },
                  child: Text('Note7'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
