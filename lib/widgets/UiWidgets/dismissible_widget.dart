import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/UiWidgets/appBar_widget.dart';
import 'package:flutter_app/widgets/subWidgets/subSnackBar.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> maang = ["microsoft", 'amazon', 'apple', 'netflix', 'google'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
          title: 'dismisss karenge khi khi khi ',
          backgroundColor: Colors.orange),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.endToStart) {
                  ScaffoldMessenger.of(context).showSnackBar(Subsnackbar(
                          content: '${maang[index]}',
                          backgroundColor: Colors.red)
                      .getSnackBar());
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(Subsnackbar(
                          content: '${maang[index]}',
                          backgroundColor: Colors.green)
                      .getSnackBar());
                }
              },
              background: Container(
                color: Colors.red,
              ),
              secondaryBackground: Container(
                color: Colors.green,
              ),
              key: Key(maang[index]),
              child: Card(
                child: ListTile(
                  title: Text(maang[index]),
                  leading: Icon(Icons.person),
                ),
              ));
        },
        itemCount: maang.length,
      ),
    );
  }
}
