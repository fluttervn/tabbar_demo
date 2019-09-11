# tabbar_demo

[![Build Status](https://travis-ci.org/fluttervn/tabbar_demo.svg?branch=master)](https://travis-ci.org/fluttervn/tabbar_demo)

A demo for the bottom TabBar of Flutter application.

## Getting Started

![demo](screenshots/demo.png)

In this demo, I made TabBar with 5 ways:
- TabContainerDefault: use DefaultTabController + reserve tab content (don't reload content many times).
- TabContainerBottom: use BottomNavigationBar to create bottom bar and load content as normal.
- TabContainerIndexedStack: use BottomNavigationBar + IndexedStack to reduce reload content many times.
- TabContainerLoad1Time: use BottomNavigationBar + IndexedStack + some tricks to reduce reload content many times.
- TabContainer: Customize bottom bar + IndexedStack + some tricks to reduce reload content many times.

Please refer to [my post on Medium](https://medium.com/fluttervn/making-bottom-tabbar-with-flutter-5ff82e8defe0?source=friends_link&sk=d08643e13c911feafa638bd7937f21ff) for more details

## Authors
- [anlam87](https://github.com/anlam87) (anlam12787@gmail.com)
