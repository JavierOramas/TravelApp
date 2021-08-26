import 'package:flutter/material.dart';
import 'package:test/src/constants.dart';
import 'package:test/src/resolvers/home_destinations_data.dart';
import 'package:test/src/widgets/swiper_products.dart';

import '../../main.dart';

class DestinationWidget extends StatelessWidget {
  String type = '';
  Map data = {};

  DestinationWidget(this.type);

  @override
  Widget build(BuildContext context) {
    // print(type);
    this.data = getDestinationData(type);
    return Container(
      // color: appBarIconsColor,
      // margin: EdgeInsets.symmetric(vertical: 5),
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Text(
              lang == 'name_es'
                  ? this.data['destination_name_es']
                  : this.data['destination_name_en'],
              style: TextStyle(
                // decoration: TextDecoration.underline,
                color: appBarIconsColor,
                fontSize: fontSizeSectionsHome,
              ),
            ),
          ),
          SwiperProducts(data),
        ],
      ),
    );
  }
}
