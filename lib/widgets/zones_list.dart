import 'package:flutter/material.dart';
import 'package:icon_talk/widgets/yes_no_zone.dart';

class ZonesList extends StatelessWidget {
  const ZonesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text("teste"),
            ],
          ),
        ),
        const YesNoZone(),
      ],
    );
  }
}
