import 'package:flutter/material.dart';

class ContainerSizedWidgets extends StatelessWidget {
  const ContainerSizedWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Container and Sizebox'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Text(
            "Flutter developer",
            style: TextStyle(fontSize: 20),
          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Colors.orange,
              boxShadow: [
                BoxShadow(blurRadius: 5, spreadRadius: 5, color: Colors.green)
              ]),
        ),
      ),
    );
  }
}
