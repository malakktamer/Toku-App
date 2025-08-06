import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_6/models/number.dart';

class Item extends StatelessWidget {
  const Item({required this.number, required this.color});
  final Number number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: color,
      child: Row(
        children: [
          Container(
            color: Color(0xffFEF4DA),
            child: Image.asset(number.image ?? ''),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName ?? '',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  number.enName ?? '',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.setSource(AssetSource(number.sound));
                await player.resume();
              },

              icon: Icon(Icons.play_arrow, color: Colors.white, size: 32),
            ),
          ),
        ],
      ),
    );
  }
}
