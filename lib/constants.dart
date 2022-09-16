import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_app/responsive/mobile_scaffold.dart';
import 'main.dart';

var myDefaultBackground = Colors.grey[300];

var myItemColor = Colors.grey[400];

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

var myDrawer = Drawer(
  width: 250,
  backgroundColor: Colors.grey[300],
  child: SingleChildScrollView(
    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
    child: Column(
      children: [
        SizedBox(
          height: 250,
          child: DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: const Image(
                            image:
                                AssetImage('assets/images/lightoflifeLogo.jpg'),
                            height: 70,
                          )),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.close),
                      ),
                      const Icon(CupertinoIcons.book, size: 70),
                    ],
                  ),
                ),
                Column(
                  children: const [
                    Text('LIGHT OF LIFE\n     Library',
                        style: TextStyle(fontSize: 20)),
                  ],
                )
              ],
            ),
          ),
        ),
        Column(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('C A T A L O G'),
              onTap: () { } ,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('S E T T I N G S'),
              onTap: () {
              // Navigator.push(context, MobileScaffold());
              } ,
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('A B O U T'),
              onTap: () {} ,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('L O G O U T'),
              onTap: () {} ,
            ),
          ],
        ),
      ],
    ),
  ),
);

class Variables extends ChangeNotifier {
  int index = 1;
}
