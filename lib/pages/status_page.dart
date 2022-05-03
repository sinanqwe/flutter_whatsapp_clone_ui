import 'package:flutter/material.dart';

import '../model/chat_model.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            ListTile(
              leading: Stack(
                children: <Widget>[
                  const CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage("assets/images/profile-photo.jpg"),
                  ),
                  Positioned(
                    bottom: 0.0,
                    right: 1.0,
                    child: Container(
                      height: 20,
                      width: 20,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ],
              ),
              title: const Text(
                "Durumum",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Durum güncellemesi eklemek için dokunun"),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile-photo.jpg"),
                radius: 22,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Sinan Yılmaz",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Bugün, 14:08",
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
