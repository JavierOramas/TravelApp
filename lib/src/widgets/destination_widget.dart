import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:test/src/constants.dart';
import 'package:test/src/resolvers/destinantions_offers.dart';
import 'package:test/src/resolvers/home_destinations_data.dart';
import 'package:test/src/widgets/swiper_products.dart';

import '../../main.dart';

DestinationWidget(BuildContext context, String type) {
  // print(type);
  Map data = getDestinationData(type);
  Map offer = getDestinationOffer(type);
  double height = MediaQuery.of(context).size.height / 2.8;
  return [
    Center(
      child: Container(
        margin: EdgeInsets.all(5),
        height: (height / 3) * 2,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(offer['image']),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          children: [
            Spacer(),
            BorderedText(
              strokeColor: Colors.black,
              child: Text(
                offer['name'],
                style: style_offer_name,
              ),
            ),
            SizedBox(
              height: (height / 3) * 2 * 0.5,
            ),
            Row(
              children: [
                Spacer(),
                Column(
                  children: [
                    BorderedText(
                      strokeColor: Colors.black,
                      strokeWidth: 3,
                      child: Text(
                        'desde',
                        style: style_from,
                      ),
                    ),
                    Text(
                      offer['price'],
                      style: style_price,
                    )
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Center(
                        child: Text(lang == 'name_es' ? 'Visitar' : 'Visit')),
                  ),
                ),
                Spacer()
              ],
            ),
            Spacer()
          ],
        ),
      ),
    ),
    Container(
      // height: height /,
      margin: EdgeInsets.all(5),
      child: Text(
        lang == 'name_es'
            ? data['destination_name_es']
            : data['destination_name_en'],
        style: TextStyle(
          // decoration: TextDecoration.underline,
          color: appBarIconsColor,
          fontSize: fontSizeSectionsHome,
        ),
      ),
    ),
    SwiperProducts(data, height),
  ];
}
