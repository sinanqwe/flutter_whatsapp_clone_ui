import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone_ui/pages/calls.dart';
import 'package:flutter_whatsapp_clone_ui/pages/chat_page.dart';
import 'package:flutter_whatsapp_clone_ui/pages/status_page.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.camera_alt),),
                Tab(text: "Sohbetler",),
                Tab(text: "Durum",),
                Tab(text: "Aramalar",),
              ],
            ),
            title: Text("Whatsapp",),
            actions: [
              IconButton(
                onPressed: () => print("tapped"),
                icon: Icon(
                  Icons.search,
                ),
              ),
              IconButton(
                onPressed: () => print("tapped"),
                icon: Icon(
                  Icons.more_vert,
                ),
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Icon(Icons.camera_alt),
              ChatPage(),
              StatusPage(),
              Calls(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("tapped"),
        child: Icon(Icons.message),
      ),
    );

  }
}
