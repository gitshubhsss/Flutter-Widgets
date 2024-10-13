import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/UiWidgets/Drawer_widget.dart';
import 'package:flutter_app/widgets/UiWidgets/alertDialogue_widget.dart';
import 'package:flutter_app/widgets/UiWidgets/dropdownList_widget.dart';
//library for using the material widgets

void main() {
  runApp(new SizeBoxAndContainer());
}

class SizeBoxAndContainer extends StatelessWidget {
  const SizeBoxAndContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(brightness: Brightness.light, primaryColor: Colors.orange),
      home: DropdownlistWidget(),
    );
  }
}
