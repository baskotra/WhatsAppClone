import 'package:flutter/material.dart';
import 'package:flutter_whats_app_clone/models/Model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context,index) => Column(
        children: <Widget>[
          Divider(height: 10.0,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(dummyData[index].avatarUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dummyData[index].name, style: TextStyle(fontWeight: FontWeight.bold),),
                Text(dummyData[index].time, style: TextStyle(color: Colors.grey),)
              ],
            ),
            subtitle: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(dummyData[index].message,
                style: TextStyle(color: Colors.grey) 
                ),
              ),
              ),
          )

        ],
      ),
    );
  }
}