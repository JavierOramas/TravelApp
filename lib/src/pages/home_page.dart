import 'package:flutter/material.dart';
import 'package:test/src/constants.dart';
import 'package:test/src/widgets/destination_swiper.dart';
import 'package:test/src/widgets/destination_widget.dart';
import 'package:test/src/widgets/home_menu_items.dart';
import 'package:test/src/widgets/home_support_items.dart';
import 'package:test/src/widgets/home_swiper.dart';
import 'package:test/src/widgets/serach_buttons.dart';

class HomeWidget extends StatelessWidget {
  // const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Center(
          child: Image(image: AssetImage('assets/twt.png')),
        ),
        backgroundColor: Theme.of(context).bottomAppBarColor,
        leading: IconButton(
          icon: Icon(
            Icons.dehaze,
            color: appBarIconsColor,
          ),
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        ),
        actions: <Widget>[
          Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(
                  Icons.support_agent,
                  color: appBarIconsColor,
                ),
                onPressed: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                },
              );
            },
          )
        ],
      ),
      body: ListView(
        children: [
          SearchButtons(),
          HomeSwiper(),
          Container(
            color: appBarIconsColor,
            child: Column(
              children: [
                // Spacer()
                DestinationWidget('city'),
                // Divider(),
                DestinationWidget('sun-beach'),
                // Divider(),
                DestinationWidget('islets'),
                // Divider(),
                DestinationWidget('nature'),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(child: HomeMenuItems()),
      endDrawer: Drawer(child: HomeSupportItems()),
    );
  }
}
