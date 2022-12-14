import 'package:flutter/material.dart';

import '../services/tts.dart';

class TalkButton extends StatelessWidget {
  const TalkButton(
    this.caption,
    this.icon,
    this.iconColor, {
    this.width = 110,
    this.height = 150,
    this.iconSize = 80,
    Key? key,
  }) : super(key: key);

  final String caption;
  final double width;
  final double height;
  final double iconSize;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue,
          onTap: () {
            TTS().speak(caption);
          },
          child: SizedBox(
            width: width,
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  icon,
                  color: iconColor,
                  size: iconSize,
                ),
                Center(child: Text(caption.toUpperCase())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
