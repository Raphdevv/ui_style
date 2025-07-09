import 'package:flutter/material.dart';
import 'utils_export.dart';

extension AppPaddingValues on AppDimensionsPadding {
  EdgeInsets get all => EdgeInsets.all(value);
  EdgeInsets get symmetricH => EdgeInsets.symmetric(horizontal: value);
  EdgeInsets get symmetricV => EdgeInsets.symmetric(vertical: value);

  static EdgeInsets symmetric({
    required AppDimensionsPadding vertical,
    required AppDimensionsPadding horizontal,
  }) {
    return EdgeInsets.symmetric(
      vertical: vertical.value,
      horizontal: horizontal.value,
    );
  }
}

extension FontSizeResponsive on AppDimensionsFontSize {
  double responsive(BuildContext context) {
    final scale = MediaQuery.of(context).textScaler.scale(1.0);
    return value * scale;
  }
}
