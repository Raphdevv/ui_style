import 'package:flutter/material.dart';
import 'package:ui_style/utils/app_enums.dart';
import 'package:ui_style/widgets/u_button_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UButtonWidget(
              text: "Fill",
              style: UButtonStyle.fill,
              size: UButtonSize.s,
              onPressed: () {},
            ),
            SizedBox(height: 10),
            UButtonWidget(
              text: "Border",
              style: UButtonStyle.border,
              size: UButtonSize.m,
              onPressed: () {},
            ),
            SizedBox(height: 10),
            UButtonWidget(
              text: "Text",
              size: UButtonSize.xl,
              style: UButtonStyle.text,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
