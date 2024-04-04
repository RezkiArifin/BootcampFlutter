import 'package:flutter/material.dart';
import 'package:sanber_app/tugas/tugas11/drawerScreen.dart';
import 'package:sanber_app/tugas/tugas11/model/chart_model.dart';

class Telegram extends StatefulWidget {
  const Telegram({super.key});

  @override
  State<Telegram> createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Telegram"),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: const DrawerScreen(),
      body: ListView.separated(
        itemBuilder: (context, i) {
          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(items[i].profileUrl!),
            ),
            title: Text(
              items[i].name!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(items[i].message!),
            trailing: Text(items[i].time!),
          );
        },
        separatorBuilder: (context, i) {
          return const Divider();
        },
        itemCount: items.length,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF65a9e0),
        onPressed: () {},
        child: const Icon(
          Icons.create,
          color: Colors.white,
        ),
      ),
    );
  }
}
