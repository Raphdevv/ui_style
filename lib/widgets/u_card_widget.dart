import 'package:flutter/material.dart';

import '../utils/utils_export.dart';

/// A customizable card widget that can contain various child widgets.
/// This widget provides a surface with rounded corners and a shadow effect,
/// making it suitable for displaying content such as text, images, or other widgets.
/// The card can be used in various layouts and
class UCardWidget extends StatelessWidget {
  /// A customizable card widget that can contain various child widgets.
  final List<Widget>? children;
  final Color? color;
  const UCardWidget({super.key, this.children, this.color});

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: color ?? themeColor.surface,
        borderRadius: BorderRadius.circular(
          AppDimensionsRadius.largeIncreased,
        ),
        boxShadow: [
          BoxShadow(
            color: themeColor.shadow.withAlpha(40),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: children ??
            [
              SizedBox(
                height: MediaQuery.of(context).padding.top,
                child: Center(
                  child: Text(
                    'Card Content Here',
                    style: TextStyle(
                      color: themeColor.onSurface,
                      fontSize: AppDimensionsFontSize.m.responsive(context),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
      ),
    );
  }
}
