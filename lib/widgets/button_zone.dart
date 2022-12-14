import 'package:flutter/material.dart';

import 'talk_button.dart';

Widget buttonZone(List<TalkButton> buttons) {
  return SingleChildScrollView(
    padding: const EdgeInsets.only(top: 15),
    child: Wrap(
      runSpacing: 4,
      spacing: 4,
      alignment: WrapAlignment.center,
      children: List.generate(buttons.length, (index) {
        final btn = buttons[index];
        return SizedBox(
          width: btn.width,
          height: btn.height,
          child: btn,
        );
      }),
    ),
  );
}
