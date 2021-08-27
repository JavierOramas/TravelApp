import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:test/src/constants.dart';
import 'package:test/src/resolvers/destinantions_offers.dart';
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
    Map offer = getDestinationOffer(this.type);
    double height = MediaQuery.of(context).size.height / 2.8;
    return Container(
      // color: appBarIconsColor,
      margin: EdgeInsets.only(left: 5),
      height: height,
      child: Wrap(
        children: [
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
                  Text(offer['name']),
                  SizedBox(
                    height: (height / 3) * 2 * 0.5,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Column(
                        children: [Text('desde'), Text(offer['price'])],
                      ),
                      Spacer(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        onPressed: () {},
                        child: Text(lang == 'name_es' ? 'Visitar' : 'Visit'),
                      ),
                      Spacer()
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            // height: height / 2,
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
          Container(
              height: height,
              width: MediaQuery.of(context).size.width * 0.95,
              padding: EdgeInsets.only(left: 10),
              // color: Colors.red,
              child: ListView.builder(
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: data['item_count'],
                  itemBuilder: (BuildContext contex, int index) {
                    double width = MediaQuery.of(context).size.width > 600
                        ? MediaQuery.of(context).size.width * 0.4
                        : MediaQuery.of(context).size.width * 0.8;
                    return Container(
                      height: height,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage(data['items'][index]['image']),
                              height: 2 * (height / 3) * 0.95,
                              width: width,
                              fit: BoxFit.fill,
                            ),
                            Container(
                              height: height / 3,
                              width: width,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Spacer(),
                                      Text(
                                        data['items'][index]['name'],
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      ),
                                      Spacer(),
                                      RatingBarIndicator(
                                        rating: data['items'][index]['stars'],
                                        itemBuilder: (context, index) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        itemCount: 5,
                                        itemSize: 15.0,
                                        direction: Axis.horizontal,
                                      ),
                                      Spacer()
                                    ],
                                  ),
                                  Text(
                                    data['items'][index]['destination'],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            lang == 'name_es'
                                                ? 'desde'
                                                : 'from',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            data['items'][index]['price'],
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20),
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                            primary: Colors.white,
                                            backgroundColor: Colors.red),
                                        onPressed: () => goToProduct(
                                            data['items'][index]['id']),
                                        child: Text(
                                          lang == 'name_es'
                                              ? 'Reservar'
                                              : 'Book Now',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      Spacer(),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }))
          // SwiperProducts(data, height),
        ],
      ),
    );
  }
}
