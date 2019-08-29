import 'package:flutter/material.dart';

class Tab3 extends StatefulWidget {
  @override
  _Tab3State createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> with AutomaticKeepAliveClientMixin<Tab3> {
  @override
  void initState() {
    super.initState();
    print('initState Tab3');
  }

  @override
  Widget build(BuildContext context) {
    print('build Tab3');
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab3'),
      ),
      body: Center(
        child: Text(
          'This is content of Tab3',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
