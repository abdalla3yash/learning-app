import 'package:flutter/material.dart';
import 'package:learning_app/components/category.dart';
import 'package:learning_app/screens/colors_screen.dart';
import 'package:learning_app/screens/family_member_screen.dart';
import 'package:learning_app/screens/numbers_page.dart';
import 'package:learning_app/screens/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Toku',
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: Column(
        children: [
          Category(
              text: 'Numbers',
              color: const Color(0xffEF9235),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return NumbersPage();
                  }),
                );
              }),
          Category(
              text: 'FamilyMembers',
              color: const Color(0xff558B37),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return FamilyMemberScreen();
                  }),
                );
              }),
          Category(
              text: 'Colors',
              color: const Color(0xff79359F),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return ColorsScreen();
                  }),
                );
              }),
          Category(
              text: 'Phrases',
              color: const Color(0xff50ADC7),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return PhrasesScreen();
                  }),
                );
              }),
        ],
      ),
    );
  }
}
