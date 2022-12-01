import 'package:flutter/material.dart';

import 'talk_button.dart';

Widget buttonZone(List<TalkButton> buttons) {
  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: buttons,
  );
}
