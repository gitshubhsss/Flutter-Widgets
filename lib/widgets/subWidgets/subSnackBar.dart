import 'package:flutter/material.dart';

class Subsnackbar {
  final String content;
  Subsnackbar({
    required this.content,
  });

  SnackBar getSnackBar() {
    return SnackBar(
      showCloseIcon: true,
      closeIconColor: Colors.red,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.blue,
      duration: Duration(seconds: 2),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
      content: Text(content), // Removed unnecessary string interpolation
    );
  }
}
