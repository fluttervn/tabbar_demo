import 'package:flutter/material.dart';

import 'screens/tab1.dart';
import 'screens/tab2.dart';
import 'screens/tab3.dart';

class TabContainerDefault extends StatefulWidget {
  TabContainerDefault({Key key}) : super(key: key);

  @override
  _TabContainerDefaultState createState() => _TabContainerDefaultState();
}

class _TabContainerDefaultState extends State<TabContainerDefault> {
  List<Widget> listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      Tab1(),
      Tab2(),
      Tab3(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
              physics: NeverScrollableScrollPhysics(), children: listScreens),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                text: 'Tab1',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Tab2',
                icon: Icon(Icons.report_problem),
              ),
              Tab(
                text: 'Tab3',
                icon: Icon(Icons.settings),
              ),
            ],
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
