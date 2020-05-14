import 'package:flutter/material.dart';
import 'package:flutter_whats_app_clone/Pages/ChatScreen.dart';
import 'package:flutter_whats_app_clone/Pages/callScreen.dart';
import 'package:flutter_whats_app_clone/Pages/camerascreen.dart';
import 'package:flutter_whats_app_clone/Pages/status.dart';

class WhatsAppHomePage extends StatefulWidget {
  WhatsAppHomePage({Key key}) : super(key: key);

  @override
  _WhatsAppHomePageState createState() => _WhatsAppHomePageState();
}

class _WhatsAppHomePageState extends State<WhatsAppHomePage> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() { 
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("WhatsApp"),
         elevation: 0.7,
         actions: <Widget>[
           IconButton(icon: Icon(Icons.search), onPressed: (){}),
           IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
         ],
        backgroundColor: Colors.blueGrey[900],
        bottom: TabBar(
          //isScrollable: true,
          controller: _tabController,
          tabs: [
          Tab(icon: Icon(Icons.camera_alt)),
          Tab(text: "CHATS"),
          Tab(text: "STATUS"),
          Tab(text: "CALLS"),
        ]),
       ),
       body: TabBarView(
         controller: _tabController,
         children: <Widget>[
           CameraScreen(),
           ChatScreen(),
           Status(),
           CallScreen()
         ],
       ),
       floatingActionButton: FloatingActionButton(
         onPressed: (){},
         child: Icon(Icons.message),
         backgroundColor: Color(0xff075E54)
       )
    );
      
       
  }
}