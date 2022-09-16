import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/responsive/desktop_scaffold.dart';
import 'package:responsive_app/responsive/mobile_scaffold.dart';
import 'package:responsive_app/responsive/responsive_layout.dart';
import 'package:responsive_app/responsive/tablet_scaffold.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Variables(),
      child: MaterialApp(
      // routes: {'home' = MobileScaffold()},
          debugShowCheckedModeBanner: false,
          title: 'Light of Life Library',
          home: ResponsiveLayout(
            mobileScaffold: const MobileScaffold(),
            tabletScaffold: const TabletScaffod(),
            desktopScaffold: const DesktopScaffold(),
          )),
    );
  }
}
