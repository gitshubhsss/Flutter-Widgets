import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/UiWidgets/Container_Sized_widgets.dart'; //library for using the material widgets

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
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.orange),
      home: ContainerSizedWidgets(),
    );
  }
}
