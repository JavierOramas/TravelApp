import 'package:flutter/material.dart';
import 'package:test/src/static_data/buttons.dart';

import '../constants.dart';

class SearchButtons extends StatelessWidget {
  // const SearchButtons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Container(
          margin: EdgeInsets.only(top: 10),
          height: 120,
          padding: EdgeInsets.all(3.5),
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
            // color: fonts,
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: GenerateLayout(context)),
    );
  }
}

GenerateLayout(context) {
  if (MediaQuery.of(context).size.width >= 500)
    return Column(
      children: [
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                          margin: EdgeInsets.all(0.5),
                          alignment: Alignment.center,
                          child: ButtonHome('hotels')))),
              Expanded(
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(0.5),
                        alignment: Alignment.center,
                        child: ButtonHome('cars'),
                      ))),
              Expanded(
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(0.5),
                        alignment: Alignment.center,
                        child: ButtonHome('transfers'),
                      ))),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: InkWell(
                      onTap: () => {},
                      child: Container(
                        margin: EdgeInsets.all(0.5),
                        alignment: Alignment.center,
                        child: ButtonHome('circuits'),
                      ))),
              Expanded(
                  child: InkWell(
                      onTap: () => {},
                      child: Container(
                        margin: EdgeInsets.all(0.5),
                        alignment: Alignment.center,
                        child: ButtonHome('excursions'),
                      ))),
              Expanded(
                  child: InkWell(
                      onTap: () => {},
                      child: Container(
                        margin: EdgeInsets.all(0.5),
                        alignment: Alignment.center,
                        child: ButtonHome('flights'),
                      ))),
            ],
          ),
        )
      ],
    );
  if (MediaQuery.of(context).size.width < 500)
    return Column(
      children: [
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                          margin: EdgeInsets.all(0.5),
                          alignment: Alignment.center,
                          child: ButtonHome('hotels')))),
              Expanded(
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(0.5),
                        alignment: Alignment.center,
                        child: ButtonHome('cars'),
                      ))),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(0.5),
                        alignment: Alignment.center,
                        child: ButtonHome('transfers'),
                      ))),
              Expanded(
                  child: InkWell(
                      onTap: () => {},
                      child: Container(
                        margin: EdgeInsets.all(0.5),
                        alignment: Alignment.center,
                        child: ButtonHome('circuits'),
                      ))),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: InkWell(
                      onTap: () => {},
                      child: Container(
                        margin: EdgeInsets.all(0.5),
                        alignment: Alignment.center,
                        child: ButtonHome('excursions'),
                      ))),
              Expanded(
                  child: InkWell(
                      onTap: () => {},
                      child: Container(
                        margin: EdgeInsets.all(0.5),
                        alignment: Alignment.center,
                        child: ButtonHome('flights'),
                      ))),
            ],
          ),
        ),
      ],
    );
}
