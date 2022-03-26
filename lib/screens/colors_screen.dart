import 'package:flutter/material.dart';
import 'package:learning_app/components/numbers_item.dart';
import 'package:learning_app/models/numbers_model.dart';

class ColorsScreen extends StatelessWidget {
  ColorsScreen({Key? key}) : super(key: key);

  final List<Item> familyMember = [
    Item(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'Black',
        sound: 'black.wav'),
    Item(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown',
        sound: 'brown.wav'),
    Item(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Dasutiierō',
        enName: 'Dusty Yellow',
        sound: 'dusty yellow.wav'),
    Item(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'Gray',
        sound: 'gray.wav'),
    Item(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green',
        sound: 'green.wav'),
    Item(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red',
        sound: 'red.wav'),
    Item(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'White',
        sound: 'white.wav'),
    Item(
        image: 'assets/images/colors/yellow.png',
        jpName: 'Ki',
        enName: 'Yellow',
        sound: 'yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: familyMember.length,
          itemBuilder: (context, index) {
            return NumbersItem(
              itemType: 'colors',
              numbers: familyMember[index],
              color: Color(0xff79359F),
            );
          }),
    );
  }
}
