// ignore_for_file: must_be_immutable, use_key_in_widget_constructors
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({this.text, this.color, this.icon, this.onTap});
  String? text;
  Color? color;
  IconData? icon;
  Function()? onTap;

//ديزاين صفحه الهوم بيج

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          margin:  EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: ListTile(

            title: Text(
              text!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.orangeAccent,
              child: Icon(
                icon,
                size: 20,
                color: Colors.white,
              ),
            ),
            tileColor: color,
            onTap: onTap,
          ),
        ),
      ],
    );
  }
}
