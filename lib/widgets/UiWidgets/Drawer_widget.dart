import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/UiWidgets/appBar_widget.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              "https://media.licdn.com/dms/image/v2/D4D03AQGgh1z4r_pUFA/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1708962832137?e=1733961600&v=beta&t=2E0hPhNzEQEMLIQBeTNpxI4csDkbOo4oLgte-Mfwg3w"),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'shubham ranjane',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'shubhamranjane16@gmail.com',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text("folders"),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text("share with me"),
              ),
              ListTile(
                leading: Icon(Icons.alarm),
                title: Text("buzz the alarm"),
              ),
              ListTile(
                leading: Icon(Icons.headphones),
                title: Text("Listen the song"),
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text("search for the seat"),
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text("upload the files"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text("delete"),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('logout'),
              )
            ],
          ),
        ),
      ),
      appBar: AppbarWidget(
          title: 'navigation drawer', backgroundColor: Colors.orange),
    );
  }
}
