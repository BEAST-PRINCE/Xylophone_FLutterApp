import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int n){
    final player = AudioPlayer();
    player.play(AssetSource("note${n}.wav"),);
  }

  Expanded buildButton(int n, Color c){
    return Expanded(
      child: ElevatedButton(onPressed: (){playSound(n);},
        style: ElevatedButton.styleFrom(backgroundColor: c),
        child: Container(),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildButton(1, const Color.fromRGBO(220, 0, 0, 1)),
                buildButton(2, const Color.fromRGBO(255, 100, 0, 1)),
                buildButton(3, const Color.fromRGBO(200, 200, 0, 1)),
                buildButton(4, const Color.fromRGBO(20, 180, 20, 1)),
                buildButton(5, const Color.fromRGBO(0, 100, 0, 1)),
                buildButton(6, const Color.fromRGBO(150, 0, 150, 1)),
                buildButton(7, const Color.fromRGBO(0, 0, 200, 1)),

                ],
            ),
          ),
        ),
      ),
    );
  }
}
