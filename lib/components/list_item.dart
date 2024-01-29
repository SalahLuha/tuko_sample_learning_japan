import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko_sample_learning_japan/models/number.dart';


//ديزاين صفحه number
class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.item, required this.color})
      : super(key: key);
  final ItemModeel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        color: color,
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(
                color: Colors.white54, borderRadius: BorderRadius.circular(35)),
            width: 50.0,
            height: 50.0,
            child: Image.asset(
              item.image,
            ),
          ),
          title: Text(
            item.jpName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            item.enName,
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
                  player.play(AssetSource(item.sound));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  size: 20,
                  color: Colors.white,
                ),
              )),
        ),
      ),
    );
  }
}
