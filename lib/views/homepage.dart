// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          title: Text("WhatsAapp"),
          actions: [
            IconButton(
              onPressed: () {
                print("camera button pressed");
              },
              icon: Icon(Icons.camera_alt),
            ),
            IconButton(
              onPressed: () {
                print("search button pressed ");
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                print("settings button pressed ");
              },
              icon: Icon(Icons.more_vert),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Container(
              height: 35,
              color: Color(0xFF075E54),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      print("chat button pressed");
                    },
                    child: Text("Chats", style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: () {
                      print("Update button pressed");
                    },
                    child: Text(
                      "Update",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      print("Calls button pressed");
                    },
                    child: Text("Calls", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final List<String> people = [];
