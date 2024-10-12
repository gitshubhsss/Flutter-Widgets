import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/UiWidgets/appBar_widget.dart';
import 'package:flutter_app/widgets/subWidgets/subSnackBar.dart';

class Snackbarwidgets extends StatelessWidget {
  const Snackbarwidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
          title: 'Simple bottom snackbars', backgroundColor: Colors.orange),
      body: Container(
        child: Center(
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(10, 10))))),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(Subsnackbar(
                        content: 'Am getting the snackbar',
                        backgroundColor: Colors.red)
                    .getSnackBar());
              },
              child: Text(
                "Get snackBar",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
