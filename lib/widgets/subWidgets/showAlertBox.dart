import 'package:flutter/material.dart';

class Showalertbox {
  Future<void> showAlertDialogue(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.orange,
            title: Text('Alert box'),
            icon: Icon(Icons.notification_add),
            shadowColor: const Color.fromARGB(137, 220, 6, 6),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
            content: const SingleChildScrollView(
              child: ListBody(
                children: [
                  Text('shubham ranjane'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'as a state eblem it choose a repblica of the lion capital '),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'as a state eblem it choose a repblica of the lion capital '),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'as a state eblem it choose a repblica of the lion capital '),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'as a state eblem it choose a repblica of the lion capital '),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'as a state eblem it choose a repblica of the lion capital '),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'as a state eblem it choose a repblica of the lion capital '),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'as a state eblem it choose a repblica of the lion capital '),
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('cancel')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Approved')),
            ],
          );
        });
  }
}
