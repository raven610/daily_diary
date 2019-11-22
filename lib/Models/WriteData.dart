import 'package:flutter/material.dart';

class DataTile{
  List<Widget> notes = [];
  List<Widget> getWriteData(){
    for(int i=0;i<20;i++){
      notes.add(Tile().getTile(data: 'Hello',recordedTime: DateTime(1,1,1)));
    }
    return notes;
  }
}

class Tile{
  String data;
  DateTime recordedTime;
  int id;
  Widget getTile({String data,DateTime recordedTime,int id}){
    this.id = id;
    return Card(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'time',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Text(
            data,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 30,
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.red,
          )
      ]
      ),
    );
  }
}