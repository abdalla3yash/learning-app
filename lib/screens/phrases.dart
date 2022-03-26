import 'package:flutter/material.dart';
import 'package:learning_app/components/numbers_item.dart';
import 'package:learning_app/models/numbers_model.dart';

class PhrasesScreen extends StatelessWidget {
  PhrasesScreen({Key? key}) : super(key: key);

  final List<Item> phrases = [
    Item(
        jpName: 'Kimasu ka?',
        enName: 'are you coming?',
        sound: 'are_you_coming.wav'),
    Item(
        jpName: 'Kōdoku suru koto o wasurenaide kudasai',
        enName: 'dont forget to subscribe',
        sound: 'dont_forget_to_subscribe.wav'),
    Item(
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'how are you feeling',
        sound: 'how_are_you_feeling.wav'),
    Item(
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime',
        sound: 'i_love_anime.wav'),
    Item(
        jpName: 'Watashi wa puroguramingu ga daisukidesu',
        enName: 'i love programming',
        sound: 'i_love_programming.wav'),
    Item(
        jpName: 'Puroguramingu wa kantandesu',
        enName: 'programming is easy',
        sound: 'programming_is_easy.wav'),
    Item(
        jpName: 'Namae wa nandesu ka',
        enName: 'what is your name',
        sound: 'what_is_your_name.wav'),
    Item(
        jpName: 'Doko ni iku no',
        enName: 'where are you going',
        sound: 'where_are_you_going.wav'),
    Item(
        jpName: 'Hai Imu kuru',
        enName: 'yes im coming',
        sound: 'yes_im_coming.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return NumbersItem(
              itemType: 'phrases',
              numbers: phrases[index],
              color: const Color(0xff50ADC7),
            );
          }),
    );
  }
}
