import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class ButtonHome extends StatelessWidget {
  ButtonHome(this.name);
  String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        SvgPicture.asset(
          buttons[name]['icon'],
          semanticsLabel: buttons[name][lang],
          width: 90 / 3,
        ),
        Spacer(),
        FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.center,
          child: Text(buttons[this.name][lang], style: TextStyle(color: fonts)),
        ),
        Spacer(),
      ],
    );
  }
}
