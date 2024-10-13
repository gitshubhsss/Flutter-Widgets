import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/UiWidgets/appBar_widget.dart';
import 'package:flutter_app/widgets/subWidgets/Drawer_wid.dart';

class AnimatedtextWid extends StatelessWidget {
  const AnimatedtextWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWidget(
            title: 'Animated Text ', backgroundColor: Colors.orange),
        drawer: DrawerWid().getDrawer(),
        body: SizedBox(
                  width: 250.0,
                  child: DefaultTextStyle(
        style:  TextStyle(
          fontSize: 30.0,
          fontFamily: 'Bobbers',
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText('It is not enough to do your best,'),
            TyperAnimatedText('you must know what to do,'),
            TyperAnimatedText('and then do your best'),
            TyperAnimatedText('- W.Edwards Deming'),
          ],
          onTap: () {
            print("Tap Event");
          },
          totalRepeatCount: 8,
        ),
                  ),
                ));
  }
}
