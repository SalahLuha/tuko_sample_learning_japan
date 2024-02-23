import 'package:flutter/material.dart';
import 'package:tuko_sample_learning_japan/components/list_item.dart';
import 'package:tuko_sample_learning_japan/models/number.dart';


class FamilyMembers extends StatelessWidget {
   FamilyMembers({Key? key}) : super(key: key);

  final List<ItemModeel> numbers = const [
    ItemModeel(
      sound: 'sounds/family_members/father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chich',
      enName: 'Father',
    ),
    ItemModeel(
      sound: 'sounds/family_members/daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'daughter',
    ),
    ItemModeel(
      sound: 'sounds/family_members/grand father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojisan',
      enName: 'grandfather',
    ),
    ItemModeel(
      sound: 'sounds/family_members/mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'mother',
    ),
    ItemModeel(
      sound: 'sounds/family_members/grand mother.wav',
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'grandmother',
    ),
    ItemModeel(
      sound: 'sounds/family_members/older brother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nisan',
      enName: 'older brother',
    ),
    ItemModeel(
      sound: 'sounds/family_members/older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'older sister',
    ),
    ItemModeel(
      sound: 'sounds/family_members/son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'son',
    ),
    ItemModeel(
      sound: 'sounds/family_members/younger brohter.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'younger brother',
    ),
    ItemModeel(
      sound: 'sounds/family_members/younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'younger sister',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322b),
        title: const Text('FamilyMembers',style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListItem(
              color: Color(0xFF558B37),
              item: numbers[index],);
          }),
    );
  }
}
