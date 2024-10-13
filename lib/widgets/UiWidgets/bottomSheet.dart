import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/UiWidgets/Drawer_widget.dart';
import 'package:flutter_app/widgets/UiWidgets/appBar_widget.dart';
import 'package:flutter_app/widgets/subWidgets/Drawer_wid.dart';
import 'package:flutter_app/widgets/subWidgets/showBottomSheet_subwid.dart';

class BottomsheetWidget extends StatelessWidget {
  const BottomsheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
          title: 'BottomSheet Widget', backgroundColor: Colors.orange),
      drawer: DrawerWid().getDrawer(),
      body: Center(
        child: Container(
          child: ElevatedButton(
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(10, 10)))),
                  backgroundColor: MaterialStateProperty.all(Colors.orange)),
              onPressed: () {
                ShowbottomsheetSubwid().showBottomSheetWid(context);
              },
              child: Text(
                'Get Bottomsheet',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
        ),
      ),
    );
  }
}
