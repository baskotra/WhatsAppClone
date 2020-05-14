import 'package:flutter/material.dart';
import 'package:flutter_whats_app_clone/whats_app_homePage.dart';

void main () => runApp(WhatsApp());

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsAppHomePage(),
    );
  }
}
