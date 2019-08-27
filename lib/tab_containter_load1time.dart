import 'package:flutter/material.dart';

import 'screens/tab1.dart';
import 'screens/tab2.dart';
import 'screens/tab3.dart';

class TabContainerLoad1Time extends StatefulWidget {
  TabContainerLoad1Time({Key key}) : super(key: key);

  @override
  _TabContainerLoad1TimeState createState() => _TabContainerLoad1TimeState();
}

class _TabContainerLoad1TimeState extends State<TabContainerLoad1Time> {
  List<Widget> originalList;
  Map<int, bool> originalDic;
  List<Widget> listScreens;
  List<int> listScreensIndex;

  int tabIndex = 0;
  @override
  void initState() {
    super.initState();
    originalList = [
      Tab1(),
      Tab2(),
      Tab3(),
    ];
    originalDic = {0: true, 1: false, 2: false};
    listScreens = [originalList.first];
    listScreensIndex = [0];
  }

//  @override
//  bool get wantKeepAlive =>
//      true; //by default it will be null, change it to true.

  void _selectedTab(int index) {
    if (originalDic[index] == false) {
      listScreensIndex.add(index);
      originalDic[index] = true;
      listScreensIndex.sort();
      listScreens = listScreensIndex.map((index) {
        return originalList[index];
      }).toList();
    }

    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: Scaffold(
        body: IndexedStack(index: tabIndex, children: listScreens),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabIndex,
            onTap: _selectedTab,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Tab1'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.report_problem),
                title: Text('Tab2'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('Tab3'),
              ),
            ]),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
