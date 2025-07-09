import 'package:flutter/material.dart';

class AppDimensionsPadding {
  const AppDimensionsPadding._(this.value);
  final double value;

  static const AppDimensionsPadding kPad0 = AppDimensionsPadding._(0.0);
  static const AppDimensionsPadding kPad1 = AppDimensionsPadding._(2.0);
  static const AppDimensionsPadding kPad2 = AppDimensionsPadding._(4.0);
  static const AppDimensionsPadding kPad3 = AppDimensionsPadding._(8.0);
  static const AppDimensionsPadding kPad4 = AppDimensionsPadding._(12.0);
  static const AppDimensionsPadding kPad5 = AppDimensionsPadding._(16.0);
  static const AppDimensionsPadding kPad6 = AppDimensionsPadding._(18.0);
  static const AppDimensionsPadding kPad7 = AppDimensionsPadding._(22.0);
  static const AppDimensionsPadding kPad8 = AppDimensionsPadding._(24.0);
  static const AppDimensionsPadding kPad9 = AppDimensionsPadding._(28.0);
  static const AppDimensionsPadding kPad10 = AppDimensionsPadding._(32.0);
}

class AppDimensionsSize {
  const AppDimensionsSize._(this.value);
  final Size value;

  double get width => value.width;
  double get height => value.height;

  static AppDimensionsSize s = AppDimensionsSize._(Size(12, 32));
  static AppDimensionsSize m = AppDimensionsSize._(Size(16, 40));
  static AppDimensionsSize l = AppDimensionsSize._(Size(20, 48));
  static AppDimensionsSize xl = AppDimensionsSize._(Size(24, 56));
}

class AppDimensionsFontSize {
  const AppDimensionsFontSize._(this.value);
  final double value;

  static const AppDimensionsFontSize s = AppDimensionsFontSize._(14.0);
  static const AppDimensionsFontSize m = AppDimensionsFontSize._(16.0);
  static const AppDimensionsFontSize l = AppDimensionsFontSize._(20.0);
  static const AppDimensionsFontSize xl = AppDimensionsFontSize._(24.0);
}

class AppDimensionsRadius {
  static double none = 0.0;
  static double extraSmall = 4.0;
  static double small = 8.0;
  static double medium = 12.0;
  static double large = 16.0;
  static double largeIncreased = 20.0;
  static double extraLarge = 28.0;
  static double extraLargeIncreased = 32.0;
  static double extraExtraLarge = 48.0;
}

class UniversalDimensions {
  static double radiusBtn = AppDimensionsRadius.small;
}
