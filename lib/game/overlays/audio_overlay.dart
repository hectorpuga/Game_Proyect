import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';

import '../my_game.dart';

class AudioOverlay extends StatelessWidget {
  late MyGame game;
   AudioOverlay(this.game,{
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: const Color(0x8f37474f),
          child: IconButton(
              color: Colors.pink.shade200,
              onPressed: () {
                FlameAudio.bgm.play("music.mp3");
              },
              icon: const Icon(Icons.volume_down_rounded)),
        ),
        Container(
          color: const Color(0x8f37474f),
          child: IconButton(
              color: Colors.pink.shade200,
              onPressed: () {
                FlameAudio.bgm.stop();
              },
              icon: const Icon(Icons.volume_off_rounded)),
        ),
         Container(
          color: const Color(0x8f37474f),
          child: IconButton(
              color: Colors.pink.shade200,
              onPressed: () {
                game.overlays.add("Inventario");
              },
              icon: const Icon(Icons.inventory),
        ),)
      ],
    );
  }
}
