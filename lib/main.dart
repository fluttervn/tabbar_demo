import 'package:flutter/material.dart';

import 'tab_containter_default.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabContainerDefault(),
//      TabContainerBottom(),
//      TabContainerLoad1Time(),
//      TabContainerIndexedStack(),
//      TabContainer(),
    );
  }
}
