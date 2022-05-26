import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DrumMachine());
}

class DrumMachine extends StatelessWidget {
  const DrumMachine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  final oynatici = AudioCache();

  DrumPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      oynatici.play('bip.wav');
                    },
                    child: Container(
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      oynatici.play('bongo.wav');
                    },
                    child: Container(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      oynatici.play('clap1.wav');
                    },
                    child: Container(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      oynatici.play('clap2.wav');
                    },
                    child: Container(
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      oynatici.play('clap3.wav');
                    },
                    child: Container(
                      color: Colors.cyan,
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      oynatici.play('crash.wav');
                    },
                    child: Container(
                      color: Colors.cyanAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      oynatici.play('how.wav');
                    },
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      oynatici.play('oobah.wav');
                    },
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
