import 'package:flutter/material.dart';

class UBackgroundWidget extends StatelessWidget {
  final Widget child;
  const UBackgroundWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).colorScheme;
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: themeColor.onSurface,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
            width: double.infinity,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: themeColor.surface,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
