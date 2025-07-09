import 'package:flutter/material.dart';

/// A background wrapper widget that provides a styled layout
/// with a top padding (for safe area) and a rounded surface container.
///
/// This widget is typically used as a base layout for screens,
/// ensuring consistent background colors and rounded top corners.
class UBackgroundWidget extends StatelessWidget {
  /// The child widget to be displayed inside the main content area.
  final Widget child;

  /// Creates a [UBackgroundWidget].
  ///
  /// The [child] is required and will be placed inside a surface-colored
  /// container with rounded top corners.
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
