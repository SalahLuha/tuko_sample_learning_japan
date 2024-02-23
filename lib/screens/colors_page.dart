import 'package:flutter/material.dart';
import 'package:tuko_sample_learning_japan/components/list_item.dart';
import 'package:tuko_sample_learning_japan/models/number.dart';


class ColorsPage extends StatelessWidget {
   ColorsPage({Key? key}) : super(key: key);

  final List<ItemModeel> numbers = const [
    ItemModeel(
      sound: 'sounds/colors/black.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burakku',
      enName: 'black',
    ),
    ItemModeel(
      sound: 'sounds/colors/brown.wav',
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'brown',
    ),
    ItemModeel(
      sound: 'sounds/colors/dusty yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
    ),
    ItemModeel(
      sound: 'sounds/colors/gray.wav',
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'gray',
    ),
    ItemModeel(
      sound: 'sounds/colors/green.wav',
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'green',
    ),
    ItemModeel(
      sound: 'sounds/colors/red.wav',
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'red',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
          backgroundColor: const Color(0xFF46322b),
          title: const Text(
            'Colors',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListItem(
              color: const Color(0xFF79359F),
              item: numbers[index],
            );
          }),
    );
  }
}
