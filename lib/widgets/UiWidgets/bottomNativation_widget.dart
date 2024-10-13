import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/UiWidgets/Buttons_widget.dart';
import 'package:flutter_app/widgets/UiWidgets/Container_Sized_widgets.dart';
import 'package:flutter_app/widgets/UiWidgets/bottomSheet.dart';

class BottomnativationWidget extends StatefulWidget {
  const BottomnativationWidget({super.key});

  @override
  State<BottomnativationWidget> createState() => _BottomnativationWidgetState();
}

class _BottomnativationWidgetState extends State<BottomnativationWidget> {
  int selectedIndex = 0;
  PageController pageController = PageController();
  void ontap(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppbarWidget(
      //     title: 'BottomNavigation widget', backgroundColor: Colors.orange),
      body: PageView(
        controller: pageController,
        children: [
          ContainerSizedWidgets(),
          ButtonsWidget(),
          BottomsheetWidget()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile')
        ],
        currentIndex:
            selectedIndex, //this is always going to remain the obs type
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: ontap,
      ),
    );
  }
}
