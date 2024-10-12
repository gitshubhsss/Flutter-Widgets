import "package:flutter/material.dart";
import "package:flutter_app/widgets/UiWidgets/appBar_widget.dart";

class RowscolsWidget extends StatelessWidget {
  const RowscolsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppbarWidget(
        title: "Row and Cols",
        backgroundColor: Colors.orange,
      ),
      body: Container(
        height: 300,
        width: 150,
        child: Container(
          decoration: BoxDecoration(color: const Color.fromARGB(255, 75, 27, 48)),
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
                decoration: BoxDecoration(color: Colors.white),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(color: Colors.orange),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(color: Colors.orange),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
