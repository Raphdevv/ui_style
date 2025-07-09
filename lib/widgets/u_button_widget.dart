import 'package:flutter/material.dart';
import 'package:ui_style/utils/utils_export.dart';

/// A customizable button widget supporting different sizes, styles,
/// optional prefix/tail icons, and radius settings.
///
/// The button adapts its appearance based on the provided [UButtonStyle]
/// and [UButtonSize] values.
class UButtonWidget extends StatelessWidget {
  /// The text displayed inside the button.
  final String text;

  /// The visual style of the button.
  ///
  /// Use [UButtonStyle.fill], [UButtonStyle.border], or [UButtonStyle.none].
  final UButtonStyle style;

  /// The size of the button, affecting its height and text size.
  ///
  /// Use [UButtonSize.s], [UButtonSize.m], [UButtonSize.l], or [UButtonSize.xl].
  final UButtonSize size;

  /// The corner radius of the button. If null, a default radius is used.
  final double? radius;

  /// An optional icon displayed at the end (right side) of the button.
  final IconData? tailIcon;

  /// An optional icon displayed at the beginning (left side) of the button.
  final IconData? prefixIcon;

  /// Custom height of the button. If null, determined by [size].
  final double? height;

  /// Custom width of the button. If null, calculated based on [size].
  final double? width;

  /// The callback function triggered when the button is pressed.
  final Function()? onPressed;

  /// Creates a [UButtonWidget].
  ///
  /// Customize it using [text], [style], [size], [onPressed], [prefixIcon],
  /// [tailIcon], [radius], [height], and [width].
  const UButtonWidget({
    super.key,
    required this.text,
    this.prefixIcon,
    this.tailIcon,
    this.style = UButtonStyle.fill,
    this.size = UButtonSize.m,
    this.onPressed,
    this.height,
    this.width,
    this.radius,
  });
  // fontSize text flex with attribute size
  double fontSize(BuildContext context) {
    if (size == UButtonSize.s) {
      return AppDimensionsFontSize.s.responsive(context);
    } else if (size == UButtonSize.m) {
      return AppDimensionsFontSize.m.responsive(context);
    } else if (size == UButtonSize.l) {
      return AppDimensionsFontSize.l.responsive(context);
    } else {
      return AppDimensionsFontSize.xl.responsive(context);
    }
  }

  // color text style flex with attribute style
  Color? textColor(BuildContext context) {
    if (style == UButtonStyle.fill) {
      return Theme.of(context).colorScheme.onPrimary;
    } else if (style == UButtonStyle.border) {
      return onPressed != null
          ? Theme.of(context).colorScheme.primary
          : Theme.of(context).colorScheme.secondary;
    } else {
      return onPressed != null
          ? Theme.of(context).colorScheme.primary
          : Theme.of(context).colorScheme.secondary;
    }
  }

  // height button flex with attribute size
  Size get sizeHeight {
    if (size == UButtonSize.s) {
      return AppDimensionsSize.s.value;
    } else if (size == UButtonSize.m) {
      return AppDimensionsSize.m.value;
    } else if (size == UButtonSize.l) {
      return AppDimensionsSize.l.value;
    } else {
      return AppDimensionsSize.xl.value;
    }
  }

  // style button flex with attribute style
  ButtonStyle buttonStyle(BuildContext context) {
    if (style == UButtonStyle.fill) {
      return ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        disabledBackgroundColor: Theme.of(context).colorScheme.secondary,
        disabledForegroundColor: Theme.of(context).colorScheme.onSecondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            radius ?? UniversalDimensions.radiusBtn,
          ),
        ),
      );
    } else if (style == UButtonStyle.border) {
      return ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.secondary,
        disabledBackgroundColor: Colors.transparent,
        disabledForegroundColor: Theme.of(context).colorScheme.onSecondary,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2,
            color: onPressed != null
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(
            radius ?? UniversalDimensions.radiusBtn,
          ),
        ),
      );
    } else {
      return ElevatedButton.styleFrom(
        elevation: 0,
        overlayColor: Colors.transparent,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        disabledBackgroundColor: Colors.transparent,
        disabledForegroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            radius ?? UniversalDimensions.radiusBtn,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? sizeHeight.height,
      width: width ?? (sizeHeight.width * 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: buttonStyle(context),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (prefixIcon != null)
              Flexible(
                  child: Icon(
                prefixIcon,
                color: textColor(context),
              )),
            if (prefixIcon != null) SizedBox(width: 10),
            Flexible(
              child: Text(
                text,
                style: TextStyle(
                  color: textColor(context),
                  fontSize: fontSize(context),
                ),
              ),
            ),
            if (tailIcon != null) SizedBox(width: 10),
            if (tailIcon != null)
              Flexible(
                  child: Icon(
                tailIcon,
                color: textColor(context),
              )),
          ],
        ),
      ),
    );
  }
}
