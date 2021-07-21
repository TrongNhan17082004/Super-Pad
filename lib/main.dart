import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //! Audio Player
  void playMusic(int number) {
    AudioPlayer audioPlayer = AudioPlayer();
    audioPlayer.play('sounds/beat $number.mp3', isLocal: true);
  }

  //! Key Pad
  Container buildKey({
    required String text,
    required Color padColor,
    required int padNumber,
    required double vertical,
    required double horizontal,
    required double left,
    required double right,
    required double top,
    required double bottom,
  }) {
    return Container(
      margin: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: FlatButton(
        child: Container(
          padding:
              EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: Color(0xFFE8EAFA)),
            ),
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: padColor,
        onPressed: () {
          playMusic(padNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('Super Pads'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://media.giphy.com/media/3ohzdGSWC33SU3GBeE/giphy.gif'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    buildKey(
                      //! Key 1
                      vertical: 40,
                      horizontal: 35,
                      text: 'Intro 1',
                      left: 15,
                      top: 70,
                      bottom: 30,
                      right: 15,
                      padColor: Colors.blue,
                      padNumber: 1,
                    ),
                    buildKey(
                      //! Key 2
                      vertical: 40,
                      horizontal: 35,
                      text: 'Intro 2',
                      left: 15,
                      top: 70,
                      bottom: 30,
                      right: 15,
                      padColor: Colors.green,
                      padNumber: 2,
                    ),
                  ],
                ),
                Row(
                  children: [
                    buildKey(
                      //! Key 3
                      vertical: 40,
                      horizontal: 35,
                      text: 'Beat 1',
                      left: 15,
                      top: 15,
                      bottom: 30,
                      right: 15,
                      padColor: Colors.orange,
                      padNumber: 3,
                    ),
                    buildKey(
                      //! Key 4
                      vertical: 40,
                      horizontal: 35,
                      text: 'Beat 2',
                      left: 15,
                      top: 15,
                      bottom: 30,
                      right: 15,
                      padColor: Colors.purple,
                      padNumber: 4,
                    ),
                  ],
                ),
                Row(
                  children: [
                    buildKey(
                      //! Key 5
                      vertical: 40,
                      horizontal: 25,
                      text: 'Melody 1',
                      left: 15,
                      top: 15,
                      bottom: 30,
                      right: 15,
                      padColor: Colors.red,
                      padNumber: 5,
                    ),
                    buildKey(
                      //! Key 6
                      vertical: 40,
                      horizontal: 25,
                      text: 'Melody 2',
                      left: 15,
                      top: 15,
                      bottom: 30,
                      right: 15,
                      padColor: Colors.pink,
                      padNumber: 6,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
