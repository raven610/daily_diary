import 'package:flutter/material.dart';

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
              ),
              title: Text(
                'Daily Diary',
                style: TextStyle(
                  fontSize: 22,
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
                Text('Chat View'),
                Text('Settings'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
