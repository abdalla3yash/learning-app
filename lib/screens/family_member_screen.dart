import 'package:flutter/material.dart';
import 'package:learning_app/components/numbers_item.dart';
import 'package:learning_app/models/numbers_model.dart';

class FamilyMemberScreen extends StatelessWidget {
  FamilyMemberScreen({Key? key}) : super(key: key);

  final List<Item> familyMember = [
    Item(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'Father',
        sound: 'father.wav'),
    Item(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'Mother',
        sound: 'mother.wav'),
    Item(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'Son',
        sound: 'son.wav'),
    Item(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'Daughter',
        sound: 'daughter.wav'),
    Item(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Ani',
        enName: 'Older Brother',
        sound: 'older brother.wav'),
    Item(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older Sister',
        sound: 'older sister.wav'),
    Item(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'Younger Brother',
        sound: 'younger brother.wav'),
    Item(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'Younger Sister',
        sound: 'younger sister.wav'),
    Item(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojīsan',
        enName: 'GrandFather',
        sound: 'grand father.wav'),
    Item(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'GrandMother',
        sound: 'grand mother.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: familyMember.length,
          itemBuilder: (context, index) {
            return NumbersItem(
              itemType: 'family_members',
              numbers: familyMember[index],
              color: Color(0xff558B37),
            );
          }),
    );
  }
}
