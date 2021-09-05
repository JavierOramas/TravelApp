import 'package:flutter/material.dart';
import 'package:test/src/constants.dart';
import 'package:test/src/widgets/destination_widget.dart';
import 'package:test/src/widgets/extras/services_cuba.dart';
import 'package:test/src/widgets/home_menu_items.dart';
import 'package:test/src/widgets/home_support_items.dart';
import 'package:test/src/widgets/hotel_offer.dart';
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
        children: List<Widget>.generate(1, (index) => SearchButtons()) +
            DestinationWidget(context, 'city') +
            DestinationWidget(context, 'sun-beach') +
            [HotelOffer()] +
            DestinationWidget(context, 'islets') +
            DestinationWidget(context, 'nature') +
            [ServicesCuba()],

        // RecomendedBlocks(),
      ),
      drawer: generateDrawer(context),
      endDrawer: Drawer(child: HomeSupportItems()),
    );
  }
}

generateDrawer(BuildContext context) {
  final theme = Theme.of(context);
  final textTheme = theme.textTheme;
  int _selectedDestination = 0;

  return Drawer(
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Header',
            style: textTheme.headline6,
          ),
        ),
        Divider(
          height: 1,
          thickness: 1,
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('Item 1'),
          selected: _selectedDestination == 0,
          onTap: () => {},
        ),
        ListTile(
          leading: Icon(Icons.delete),
          title: Text('Item 2'),
          selected: _selectedDestination == 1,
          onTap: () => {},
        ),
        ListTile(
          leading: Icon(Icons.label),
          title: Text('Item 3'),
          selected: _selectedDestination == 2,
          onTap: () => {},
        ),
        Divider(
          height: 1,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Label',
          ),
        ),
        ListTile(
          leading: Icon(Icons.bookmark),
          title: Text('Item A'),
          selected: _selectedDestination == 3,
          onTap: () => {},
        ),
      ],
    ),
  );
}
