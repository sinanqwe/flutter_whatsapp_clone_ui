import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone_ui/model/chat_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, i) => Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(data[i].photoUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data[i].name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  data[i].time,
                  style: const TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                data[i].message,
                style: const TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
