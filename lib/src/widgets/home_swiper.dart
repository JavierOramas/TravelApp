import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:test/src/resolvers/home_swiper_data.dart';

import '../../main.dart';

class HomeSwiper extends StatelessWidget {
  // const HomeSwiper({Key? key}) : super(key: key);

  Map data = {};

  @override
  Widget build(BuildContext context) {
    this.data = getHomeSwiperData();
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: MediaQuery.of(context).size.width * 0.8,
      height: 300,
      child: new Swiper(
        itemCount: data['count'],
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Image(
                image: AssetImage(data['items'][index]['image']),
                fit: BoxFit.contain,
              ),
              Row(
                children: [
                  Spacer(),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 11),
                      child: Text(
                        data['items'][index]['name'],
                        style: TextStyle(color: Colors.black54, fontSize: 25),
                      )),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(3),
                          child: Text(
                            lang == 'name_es' ? 'desde' : 'from',
                            style: TextStyle(color: Colors.grey, fontSize: 11),
                          ),
                        ),
                        Text(
                          data['items'][index]['price'],
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: EdgeInsets.symmetric(vertical: 11),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.white, backgroundColor: Colors.red),
                      onPressed: goToOffer(data),
                      child: Text(
                        lang == 'name_es' ? 'Reservar' : 'Book Now',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              )
            ],
          );
          // return new Image.network(data['items'][index]['image'])
        },
        // pagination: new SwiperPagination(),
        control: new SwiperControl(),
        autoplay: true,
      ),
    );
  }
}

goToOffer(Map data) {
  return;
}
