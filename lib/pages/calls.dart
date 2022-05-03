import 'package:flutter/material.dart';

import '../model/chat_model.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
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
              ],
            ),
            trailing: Icon(Icons.call, color: Colors.teal,),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios, color: Colors.green, size: 13,),
                  Text(
                    data[i].time,
                    style: const TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );

  }
}
