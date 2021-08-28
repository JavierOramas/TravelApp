import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:test/src/constants.dart';
import 'package:test/src/resolvers/hotel_offer_data.dart';

import '../../main.dart';

class HotelOffer extends StatelessWidget {
  // double height;

  // HotelOffer(this.height);

  @override
  Widget build(BuildContext context) {
    Map data = getHotelOfferData();
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.98,
        height: MediaQuery.of(context).size.height / 4,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(data['image']), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Spacer(),
            BorderedText(
              strokeColor: Colors.black,
              child: Text(data['name'], style: style_offer_name),
            ),
            Spacer(),
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
                      data['price'],
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
            Spacer(),
          ],
        ),
      ),
    );
  }
}
