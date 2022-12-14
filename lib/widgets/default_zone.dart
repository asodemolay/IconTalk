import 'package:flutter/material.dart';
import 'package:icon_talk/data/actions_list.dart';

import 'button_zone.dart';
import 'talk_button.dart';

class DefaultZone extends StatelessWidget {
  const DefaultZone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buttonZone(
      getDefaultButtons(),
    );
  }

  List<TalkButton> getDefaultButtons() {
    return getActions()
        .where((a) => a.category == 'default')
        .map((a) => TalkButton(a.text, a.icon, a.iconColor))
        .toList();
  }
}
