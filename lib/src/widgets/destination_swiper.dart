import 'package:flutter/material.dart';
import 'package:test/src/widgets/destination_widget.dart';

class DestinationSwiper extends StatelessWidget {
  // const SetsinationSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      height: 400,
      child: Column(
        children: [
          DestinationWidget('city'),
          DestinationWidget('sun-beach'),
          DestinationWidget('islets'),
          DestinationWidget('nature'),
        ],
      ),
    );
  }
}
