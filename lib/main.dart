import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/UiWidgets/Buttons_widget.dart';
import 'package:flutter_app/widgets/UiWidgets/Container_Sized_widgets.dart';
import 'package:flutter_app/widgets/UiWidgets/Drawer_widget.dart';
import 'package:flutter_app/widgets/UiWidgets/dismissible_widget.dart';
import 'package:flutter_app/widgets/UiWidgets/list_grid_widget.dart';
import 'package:flutter_app/widgets/UiWidgets/rowsCols_widget.dart';
import 'package:flutter_app/widgets/UiWidgets/snackBarWidgets.dart'; //library for using the material widgets

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
      home: DrawerWidget(),
    );
  }
}
