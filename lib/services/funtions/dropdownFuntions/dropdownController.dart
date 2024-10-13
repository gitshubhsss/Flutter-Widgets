import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropdownController extends GetxController {
  var cvalue = "".obs;
  var subcvalue = "".obs;
  var isdisable = true.obs;
  var courseItems = <DropdownMenuItem<String>>[
    DropdownMenuItem(
      child: Text('Web'),
      value: 'Web',
    ),
    DropdownMenuItem(
      child: Text('App'),
      value: 'App',
    ),
    DropdownMenuItem(
      child: Text('Desktop'),
      value: 'Desktop',
    )
  ].obs;
  var menuItems = <DropdownMenuItem<String>>[].obs;
  var hintText = "select the Ocuppation eg app,desktop,web".obs;

  var web = {"1": "PHP", "2": "Nodejs", "3": "Python"}.obs;
  var app = {"1": "Java", "2": "Dart", "3": "Kotlin"}.obs;
  var desktop = {"1": "Java", "2": "C#", "3": "Python Django"}.obs;

  void populateValue() {
    menuItems.clear(); // Clear previous items
    web.forEach((key, value) {
      menuItems.add(DropdownMenuItem(
        child: Text(value),
        value: value,
      ));
    });
  }

  void populateApp() {
    menuItems.clear(); // Clear previous items
    app.forEach((key, value) {
      menuItems.add(DropdownMenuItem(
        child: Text(value),
        value: value,
      ));
    });
  }

  void populateDesktop() {
    menuItems.clear(); // Clear previous items
    desktop.forEach((key, value) {
      menuItems.add(DropdownMenuItem(
        child: Text(value),
        value: value,
      ));
    });
  }

  void coursesValue(String value) {
    menuItems.clear(); // Clear before populating based on value
    if (value == "Web") {
      populateValue(); // Populate for web
    } else if (value == "App") {
      populateApp(); // Populate for app
    } else if (value == "Desktop") {
      populateDesktop(); // Populate for desktop
    }
    cvalue.value = value;
    // Update the cvalue observable
    isdisable.value = false; // Enable the dropdown
  }

  void changeValue(value) {
    subcvalue.value = value;
  }
}
