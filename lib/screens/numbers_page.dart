import 'package:flutter/material.dart';
import 'package:learning_app/components/numbers_item.dart';
import 'package:learning_app/models/numbers_model.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({Key? key}) : super(key: key);

  final List<Item> numbers = [
    Item(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'Ichi',
        enName: 'One',
        sound: 'number_one_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'Two',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'Three',
        sound: 'number_three_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'Four',
        sound: 'number_four_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'Five',
        sound: 'number_five_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'Six',
        sound: 'number_six_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Seban',
        enName: 'Seven',
        sound: 'number_seven_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'Eight',
        sound: 'number_eight_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyu',
        enName: 'Nine',
        sound: 'number_nine_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Ju',
        enName: 'Ten',
        sound: 'number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return NumbersItem(
              itemType: 'numbers',
              numbers: numbers[index],
              color: Color(0xffEF9235),
            );
          }),
    );
  }
}
