import 'package:flutter/material.dart';
import 'package:tuko_sample_learning_japan/components/category_item.dart';
import 'package:tuko_sample_learning_japan/screens/family_members.dart';


import 'colors_page.dart';
import 'numbers_page.dart';
import 'phrases_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322b),
        title: const Text(
          'TUKO',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: const SizedBox(),

      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/skyjapan.jpg"),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
              height: 80,
              decoration:  const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(13),
                      topLeft: Radius.circular(13))),
              child:  const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        "Learn Japanese",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CategoryItem(

              text: 'Number',
              color: const Color(0xFFEF9235),

              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  NumbersPage();
                }));
              },
            ),
            CategoryItem(

              text: 'FamilyMembers',
              color: const Color(0xFF558B37),

              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  FamilyMembers();
                }));
              },
            ),
            CategoryItem(
              text: 'Colors',
              color: const Color(0xFF79359F),

              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorsPage();
                }));
              },
            ),
            CategoryItem(

              text: 'Phrases',
              color: const Color(0xff50adc7),

              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  PharasesPage();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
