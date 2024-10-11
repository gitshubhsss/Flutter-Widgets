import 'package:flutter/material.dart';

class RowscolsWidget extends StatelessWidget {
  const RowscolsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var Wheight = MediaQuery.of(context).size.height;
    var Wwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Columns and Rows and Wrap',
        ),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        height: 300,
        width: 150,
        decoration: BoxDecoration(color: Colors.black),
        child: Container(
          height: 300,
          decoration: BoxDecoration(color: Colors.blueGrey),
          child: Wrap(
            alignment: WrapAlignment.end,
            direction: Axis.vertical,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(color: Colors.white),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(color: Colors.orange),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(color: Colors.orange),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(color: Colors.orange),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
