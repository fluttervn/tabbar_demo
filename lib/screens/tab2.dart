import 'package:flutter/material.dart';

class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> with AutomaticKeepAliveClientMixin<Tab2> {
  @override
  void initState() {
    super.initState();
    print('initState Tab2');
  }

  @override
  Widget build(BuildContext context) {
    print('build Tab2');
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab2'),
      ),
      body: Center(
        child: Text(
          'This is content of Tab2',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
