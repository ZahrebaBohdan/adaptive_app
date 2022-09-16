import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/constants.dart';

class MyBox extends StatelessWidget {
  MyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Container(
          color: myItemColor,
          child: Center(child: Text('Tile ${Provider.of<Variables>(context).index++}')),
        ),
      ),
    );
  }
}
