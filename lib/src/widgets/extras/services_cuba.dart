import 'package:flutter/material.dart';
import 'package:test/src/constants.dart';
import 'package:test/src/widgets/extras/ServiceButton.dart';

class ServicesCuba extends StatelessWidget {
  // const ServicesCuba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!pingServicesCuba()) {
      return Container();
    }
    double height = MediaQuery.of(context).size.height / 2;
    double width = MediaQuery.of(context).size.width * 0.98;
    return Container(
      margin: EdgeInsets.all(5),
      height: height,
      width: width,
      child: Wrap(
        children: [
          Text(
            'Otros Servicios',
            style: TextStyle(
              color: appBarIconsColor,
              fontSize: fontSizeSectionsHome,
            ),
          ),
          ServiceButton('Envíos', height / 2 * 0.8),
          ServiceButton('Trámites', height / 2 * 0.8)
        ],
      ),
    );
  }
}

bool pingServicesCuba() {
  return true;
}
