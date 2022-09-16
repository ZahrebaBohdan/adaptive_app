import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_app/constants.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class TabletScaffod extends StatefulWidget {
  const TabletScaffod({Key? key}) : super(key: key);

  @override
  State<TabletScaffod> createState() => _TabletScaffodState();
}

class _TabletScaffodState extends State<TabletScaffod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      drawer: myDrawer(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1),
                itemBuilder: (context, index) {
                  return MyBox();
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: 5,
              itemBuilder: ((context, index) {
                return MyTile();
              }),
            ),
          ),
        ],
      ),
    );
  }
}
