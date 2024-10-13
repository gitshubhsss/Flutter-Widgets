import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/UiWidgets/appBar_widget.dart';
import 'package:flutter_app/widgets/subWidgets/Drawer_wid.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWidget(
            title: 'shevantabais app', backgroundColor: Colors.orange),
        drawer: DrawerWid().getDrawer());
  }
}
