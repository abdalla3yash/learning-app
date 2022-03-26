import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/models/numbers_model.dart';

class NumbersItem extends StatelessWidget {
  final Item numbers;
  final Color color;
  final String itemType;
  const NumbersItem(
      {Key? key,
      required this.numbers,
      required this.color,
      required this.itemType})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return numbers.image == null
        ? Container(
            height: 100,
            color: color,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        numbers.jpName,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        numbers.enName,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: IconButton(
                    onPressed: () {
                      try {
                        AudioCache player =
                            AudioCache(prefix: 'assets/sounds/$itemType/');
                        player.play(numbers.sound);
                      } catch (e) {
                        print(e);
                      }
                    },
                    icon: const Icon(Icons.play_arrow),
                    color: Colors.white,
                    iconSize: 32,
                  ),
                ),
              ],
            ),
          )
        : Container(
            height: 100,
            color: color,
            child: Row(
              children: [
                Container(
                  child: Image.asset(numbers.image!),
                  color: const Color(0xffFFF6DC),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        numbers.jpName,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        numbers.enName,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: IconButton(
                    onPressed: () {
                      try {
                        AudioCache player =
                            AudioCache(prefix: 'assets/sounds/$itemType/');
                        player.play(numbers.sound);
                      } catch (e) {
                        print(e);
                      }
                    },
                    icon: const Icon(Icons.play_arrow),
                    color: Colors.white,
                    iconSize: 32,
                  ),
                ),
              ],
            ),
          );
  }
}
