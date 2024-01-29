import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko_sample_learning_japan/models/phrase.dart';


//ديزاين صفحه number
class ListOfItem extends StatelessWidget {
  const ListOfItem({Key? key, required this.color, required this.phrase})
      : super(key: key);
  final Phrase phrase;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          color: color,
          child: ListTile(

            title: Text(
              phrase.jpName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              phrase.enName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            trailing: CircleAvatar(
                radius: 22,
                backgroundColor: Color(0x7bffffff),
                child: IconButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource(phrase.sound));
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 20,
                    color: Colors.white,
                  ),
                )),
          ),
        ),
      ],
    );
  }
}


