import 'package:flutter/material.dart';

class DrawerWid {
  Drawer getDrawer() {
    return Drawer(
      backgroundColor: Colors.orange,
      child: Container(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            "https://media.licdn.com/dms/image/v2/D4D03AQGgh1z4r_pUFA/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1708962832137?e=1733961600&v=beta&t=2E0hPhNzEQEMLIQBeTNpxI4csDkbOo4oLgte-Mfwg3w"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shubham ranjane',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'shubhamranjane16@gmail.com',
                            style: TextStyle(fontSize: 8),
                          )
                        ],
                      )
                    ],
                  ),
                )),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text('Myfiles'),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('shared with me'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('buzz the alamm'),
            ),
            ListTile(
              leading: Icon(Icons.headphones),
              title: Text('listen the songs'),
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('search for the seat'),
            ),
            ListTile(
              leading: Icon(Icons.upload),
              title: Text('upload the file'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('delte'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('logout'),
            ),
          ],
        ),
      ),
    );
  }
}
