import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/UiWidgets/appBar_widget.dart';
import 'package:flutter_app/widgets/subWidgets/showAlertBox.dart';

class AlertdialogueWidget extends StatelessWidget {
  const AlertdialogueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
          title: 'AlerDialoguewidget', backgroundColor: Colors.orange),
      body: Center(
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
                overlayColor: MaterialStateProperty.all(Colors.green),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(10, 10))))),
            onPressed: () {
              Showalertbox().showAlertDialogue(context);
            },
            child: Text(
              'Get AlertDialogue',
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
