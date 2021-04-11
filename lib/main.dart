import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MusicApp());

class MusicApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildMusic({Color color, int num, String info}) {
    return Expanded(
      child: FlatButton(
        child: Image(
          image: NetworkImage(info),),
        color: color,
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text("Magic 🎵 Sounds"),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildMusic(color: Colors.teal[100], num:1, info: "https://i.pinimg.com/originals/8c/bb/e1/8cbbe122f916741de7fef24d52055330.jpg"),
              buildMusic(color: Colors.white, num:2, info: "https://i.ytimg.com/vi/vPhg6sc1Mk4/maxresdefault.jpg"),
              buildMusic(color: Colors.teal[100], num:3, info: "https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_1200/https://www.udara-bali.com/wp-content/uploads/freshizer/f7e6b40247537bc4a7ef7df5b53026d3_34d2eabfe5d157b41a77d2ea78091ccb_Sound-Healing-The-Medicine-of-the-Future-1400-c-90-1200-c-100.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
