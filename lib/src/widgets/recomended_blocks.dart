import 'package:flutter/material.dart';
import 'package:test/main.dart';
import 'package:test/src/constants.dart';
import 'package:test/src/resolvers/home_blocks_data.dart';
import 'package:bordered_text/bordered_text.dart';

class RecomendedBlocks extends StatelessWidget {
  // const RecomendedBlocks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = 2 * (MediaQuery.of(context).size.width / 3);
    ;
    if (MediaQuery.of(context).size.width <= 600)
      height = 3 * (MediaQuery.of(context).size.width / 2);

    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Text(
            suggestedDestinations[lang],
            style: TextStyle(
              fontSize: fontSizeSectionsHome,
              color: appBarIconsColor,
            ),
          ),
          // Divider(
          //   color: dividerColors,
          // ),
          generateBlocks(context),
        ],
      ),
    );
  }
}

generateBlocks(context) {
  int x = 3;
  int y = 2;
  if (MediaQuery.of(context).size.width > 600) {
    // print('Here!');
    x = 2;
    y = 3;
  }
  List<Widget> rows = [];
  Map data = getDataBlocksHome();
  int blockIndex = 0;
  double width = MediaQuery.of(context).size.width / y * 0.9;

  for (int i = 0; i < x; i++) {
    List<Widget> currentRow = [Spacer()];
    for (int j = 0; j < y; j++) {
      blockIndex += 1;
      currentRow.add(generateBlock(blockIndex, data, context, width));
      currentRow.add(Spacer());
    }
    rows.add(Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: currentRow,
      ),
    ));
  }
  return Column(
    children: rows,
  );
}

generateBlock(
  int blockIndex,
  Map data,
  BuildContext context,
  double width,
) {
  return Container(
    width: width,
    height: width,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(data['items'][blockIndex]['image']),
            // TODO Esperando por api
            // image: DecorationImage(
            // image: NetworkImage(
            //     "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
            fit: BoxFit.cover)),
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Spacer(),
          BorderedText(
            strokeCap: StrokeCap.butt,
            strokeWidth: 4.0,
            strokeColor: Colors.black,
            child: Text(
              data['items'][blockIndex]['name'],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontSizeBlocksHome,
                color: Colors.white,
                decoration: TextDecoration.none,
                decorationColor: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: (width / 2) * 0.4,
          ),

          Container(
            child: TextButton(
              // style: TextButton.styleFrom(side: BorderSide(color: Colors.red)),
              onPressed: () => goToDestination(),
              child: BorderedText(
                strokeWidth: 2.0,
                strokeColor: Colors.black,
                child: Text(
                  lang == 'name_es' ? 'Descúbrelo' : 'Find Out',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: fontSizeBlocksHome * 0.5,
                    color: Colors.red,
                    decoration: TextDecoration.none,
                    decorationColor: Colors.red,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

goToDestination() {}
TextStyle blocksFonts = TextStyle(
  color: Colors.grey,
);
