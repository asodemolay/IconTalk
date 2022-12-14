import 'package:flutter/material.dart';
import 'package:icon_talk/widgets/button_zone.dart';
import 'package:icon_talk/widgets/talk_button.dart';

class YesNoZone extends StatelessWidget {
  const YesNoZone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buttonZone(
      [
        TalkButton("sim", Icons.thumb_up, Colors.green),
        TalkButton("não", Icons.thumb_down, Colors.red),
      ],
    );
  }
}
