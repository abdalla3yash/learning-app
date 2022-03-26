import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  String? text;
  Color? color;
  VoidCallback? onTap;
  Category({Key? key, this.text, this.color, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 65,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
