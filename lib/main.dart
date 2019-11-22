import 'package:flutter/material.dart';
import 'Models/WriteData.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              leading: Icon(
                Icons.email,
                size: 35,
                color: Colors.grey,
              ),
              title: Text(
                'Daily Diary',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                ),
              ),
              bottom: TabBar(
                indicatorColor: Colors.red,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.red,
                labelStyle: TextStyle(
                  fontSize: 20,
                ),
                tabs: <Widget>[
                  Tab(
                    text: 'Write',
                  ),
                  Tab(
                    text: 'Settings',
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 40),
                  color: Colors.black,
                  child: ListView(
                    children: DataTile().getWriteData(),
                  ),
                ),
                Text('Settings'),
              ],
            ),
            bottomSheet: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText:'Message'
              ),
            ),
          ),
        ),
      ),
    );
  }
}
