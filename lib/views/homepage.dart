// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:whatsapp/data/people_details.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          title: Text("WhatsApp"),
          actions: [
            IconButton(
              onPressed: () {
                print("camera button pressed");
              },
              icon: Icon(Icons.camera_alt),
            ),
            IconButton(
              onPressed: () {
                print("search button clicked");
              },
              icon: Icon(Icons.search),
            ),

            IconButton(
              onPressed: () {
                print(" more button clicked ");
              },
              icon: Icon(Icons.more_vert),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Container(
              height: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      print("community button pressed");
                    },
                    icon: Icon(Icons.group, color: Colors.white),
                  ),
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

      body: ListView.builder(
        itemCount: peoples.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(peoples[index].avatarurl),
            ),
            title: Text(peoples[index].name),

            subtitle: Row(
              children: [
                if (peoples[index].messegestatus == "sent")
                  Icon(Icons.check, size: 16, color: Colors.grey),
                if (peoples[index].messegestatus == "delivered")
                  Icon(Icons.done_all, size: 16, color: Colors.grey),
                if (peoples[index].messegestatus == "read")
                  Icon(Icons.done_all, size: 16, color: Colors.blue),
                SizedBox(width: 4),
                Expanded(
                  child: Text(
                    peoples[index].messege,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),

            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  peoples[index].time,
                  style: TextStyle(
                    fontSize: 12,
                    color:
                        peoples[index].isunread
                            ? Color.fromARGB(
                              255,
                              22,
                              143,
                              6,
                            ) // Green color for unread
                            : Colors.grey, // Grey color for read
                  ),
                ),

                if (peoples[index].ispinned)
                  Icon(Icons.push_pin_outlined, size: 16, color: Colors.grey),

                if (peoples[index].isunread)
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 22, 143, 6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "6",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
