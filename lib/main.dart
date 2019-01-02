
/*
import 'package:flutter/material.dart';


void main() => runApp(new MyApp());


class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  bool _value = false;
  void onChanged(bool value){
    setState(() {
      _value = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Switch(value: _value, onChanged:(bool value) {onChanged(value);}),
          ],
        ),
      ),
    );

    /*
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Switch(value: _value, onChanged:(bool value) {onChanged(value);}),
          ],
        ),
      ),
    );

    */
  }
}


*/

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  bool _enabled = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
          child: new Switch(
            value: _enabled,
            onChanged: (bool value) {
              setState(() {
                _enabled = value;
              });
            },
         //   activeThumbImage: new NetworkImage('https://lists.gnu.org/archive/html/emacs-devel/2015-10/pngR9b4lzUy39.png'),
         //   inactiveThumbImage: new NetworkImage('http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
          ),
        )
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: 'Flutter Demo',
    theme: new ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
    home: new MyHomePage(),
  ));
}