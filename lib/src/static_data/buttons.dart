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
        FittedBox(
          alignment: Alignment.center,
          fit: BoxFit.contain,
          child: SvgPicture.asset(
            buttons[name]['icon'],
            semanticsLabel: buttons[name][lang],
            height: 90 / 3 * 0.7,
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height / 90 * 0.8,
          ),
        ),
        Spacer(),
        FittedBox(
          // width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
          alignment: Alignment.center,
          child: Text(buttons[this.name][lang], style: TextStyle(color: fonts)),
        ),
        Spacer(),
      ],
    );
  }
}
