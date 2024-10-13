import 'package:flutter/material.dart';

class ShowbottomsheetSubwid {
  showBottomSheetWid(BuildContext context) {
    return showModalBottomSheet(
        isDismissible: false, //is dismissible false
        context: context,
        builder: (context) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("shubham ranjane"),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("pavan ranjane"),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("ashish ranjane"),
                ),
              ],
            ),
          );
        });
  }
}
