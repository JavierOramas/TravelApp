import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceButton extends StatelessWidget {
  String name = '';
  double height = 0;

  ServiceButton(this.name, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/placeholders/sunshine.jpg'),
            fit: BoxFit.fitWidth),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 30),
            child: SvgPicture.asset(
              'icons/menu/envios.svg',
              semanticsLabel: 'country brand',
              height: height * 0.3,
            ),
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
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
