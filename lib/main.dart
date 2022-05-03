import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone_ui/whatsapp_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
        primarySwatch: Colors.teal,
        // accentColor: Color(0xff25d366),
      ),
      home: WhatsAppHome(),
    );
  }
}
