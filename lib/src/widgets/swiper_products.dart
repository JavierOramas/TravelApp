import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../main.dart';

class SwiperProducts extends StatelessWidget {
  // List items = [];
  Map data = {};
  double height = 0;
  SwiperProducts(this.data, this.height);

  @override
  Widget build(BuildContext context) {
    // print(data);
    double size = height;

    return Center(
      child: Container(
          height: size,
          width: MediaQuery.of(context).size.width * 0.95,
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
                  height: 2 * height,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(data['items'][index]['image']),
                          height: 2 * (size / 3) * 0.95,
                          width: width,
                          fit: BoxFit.fill,
                        ),
                        Container(
                          height: size / 3,
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
                                        lang == 'name_es' ? 'desde' : 'from',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      ),
                                      Text(
                                        data['items'][index]['price'],
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 20),
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
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: Center(
                                        child: Text(
                                          lang == 'name_es'
                                              ? 'Reservar'
                                              : 'Book Now',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
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
              })),
    );
  }
}

goToProduct(data) {
  return;
}
