import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/UiWidgets/appBar_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Imageswidgets extends StatelessWidget {
  const Imageswidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
          title: 'Images in flutter', backgroundColor: Colors.orange),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Container(
            child: CachedNetworkImage(
              imageUrl:
                  "https://cdn.prod.website-files.com/6270e8022b05abb840d27d6f/6308d1ab615e60c9047c9d06_AppDev_Flutter-tools.png",
              fit: BoxFit.cover,
              placeholder: (context, url) => Center(
                  child: Container(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator())),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(blurRadius: 4, spreadRadius: 4, offset: Offset(5, 5))
              ],
              // image: DecorationImage(
              //     image: AssetImage("assets/images/flutter devoloper.png"),
              //     fit: BoxFit.cover),
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
