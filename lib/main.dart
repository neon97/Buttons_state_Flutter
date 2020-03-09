import 'package:flutter/material.dart';
import 'package:testing/list.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Application"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[for (int i = 0; i < names.length; i++) studTab(i)],
        ),
      ),
    );
  }

  Widget studTab(int i) {
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      title: Text(names[i]),
      subtitle: Container(
        padding: EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                setState(() {
                  tags[i] = 1;
                });
              },
              child: Text("Absent"),
              color: tags[i] == 1 ? Colors.red : Colors.white,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  tags[i] = 2;
                });
              },
              child: Text("Present"),
              color: tags[i] == 2 ? Colors.blue : Colors.white,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  tags[i] = 3;
                });
              },
              child: Text("Late"),
              color: tags[i] == 3 ? Colors.yellow : Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
