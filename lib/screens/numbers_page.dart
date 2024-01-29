import 'package:flutter/material.dart';
import 'package:tuko_sample_learning_japan/components/list_item.dart';
import 'package:tuko_sample_learning_japan/models/number.dart';


class NumbersPage extends StatelessWidget {
   NumbersPage({Key? key}) : super(key: key);

  final List<ItemModeel> numbers = const [
    ItemModeel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Itchi',
      enName: 'one',
    ),
    ItemModeel(
      sound: 'sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'Two',
    ),
    ItemModeel(
      sound: 'sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'Three',
    ),
    ItemModeel(
      sound: 'sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: 'Four',
    ),
    ItemModeel(
      sound: 'sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'Five',
    ),
    ItemModeel(
      sound: 'sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'Six',
    ),
    ItemModeel(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: 'Seven',
    ),
    ItemModeel(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'Havhi',
      enName: 'Eight',
    ),
    ItemModeel(
      sound: 'asounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyu',
      enName: 'Nine',
    ),
    ItemModeel(
      sound: 'asounds/numbers/number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Juu',
      enName: 'Ten',
    ),
  ];

  /*List<Widget> getList(List<Number> numbers) {
    List<Widget> itemsList = [];

    for (int i = 0; i < numbers.length; i++) {
      itemsList.add(ListItem(number: numbers[i]));
    }
    return itemsList;
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322b),
        title: const Text('Numbers',style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListItem(
              color: const Color(0xFFEF9235),
                item: numbers[index],);
          }),
    );
  }
}
