import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../main.dart';

class SwiperProducts extends StatelessWidget {
  // List items = [];
  Map data = {};
  SwiperProducts(this.data);

  @override
  Widget build(BuildContext context) {
    // print(data);
    double size = MediaQuery.of(context).size.height;

    return Container(
      height: size / 2.5,
      // color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data['item_count'],
        itemBuilder: (BuildContext contex, int index) {
          return Container(
            margin: EdgeInsets.all(5),
            height: size / 4,
            // TODO reduce this
            width: MediaQuery.of(context).size.width > 600
                ? MediaQuery.of(context).size.width * 0.4
                : MediaQuery.of(context).size.width * 0.8,
            // width: MediaQuery.of(context).size.width * 0.8,
            color: Colors.white,
            child: Column(
              children: [
                // TODO Change for network Image
                // FadeInImage(placeholder: placeholder, image: image)
                Image(
                  image: AssetImage(data['items'][index]['image']),
                  height: size / 4,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10),
                  child: Row(
                    children: [
                      Text(
                        data['items'][index]['name'],
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      Spacer(),
                      RatingBarIndicator(
                        rating: data['items'][index]['stars'],
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 20.0,
                        direction: Axis.horizontal,
                      ),
                      Spacer()
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 1, left: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    data['items'][index]['destination'],
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 3),
                  child: Row(
                    children: [
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(3),
                                  child: Text(
                                    lang == 'name_es' ? 'desde' : 'from',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  ),
                                ),
                                Text(
                                  data['items'][index]['price'],
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        margin: EdgeInsets.symmetric(vertical: 11),
                        child: TextButton(
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.red),
                          onPressed: () =>
                              goToProduct(data['items'][index]['id']),
                          child: Text(
                            lang == 'name_es' ? 'Reservar' : 'Book Now',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

goToProduct(data) {
  return;
}
