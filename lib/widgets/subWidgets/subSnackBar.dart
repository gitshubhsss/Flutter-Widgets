// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Subsnackbar {
  final String content;
  final Color backgroundColor;
  Subsnackbar({
    required this.content,
    required this.backgroundColor,
  });

  SnackBar getSnackBar() {
    return SnackBar(
      showCloseIcon: true,
      closeIconColor: Colors.red,
      behavior: SnackBarBehavior.floating,
      backgroundColor: backgroundColor,
      duration: Duration(seconds: 2),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
      content: Text(content), // Removed unnecessary string interpolation
    );
  }
}
