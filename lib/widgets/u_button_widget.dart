import 'package:flutter/material.dart';
import 'package:ui_style/utils/app_dimensions.dart';
import 'package:ui_style/utils/app_enums.dart';

class UButtonWidget extends StatelessWidget {
  final String text;
  final UButtonStyle style;
  final UButtonSize size;
  final double? radius;
  final IconData? tailIcon;
  final IconData? prefixIcon;
  final double? height;
  final double? width;
  final Function()? onPressed;

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
  double get fontSize {
    if (size == UButtonSize.s) {
      return AppDimensionsFontSize.s;
    } else if (size == UButtonSize.m) {
      return AppDimensionsFontSize.m;
    } else if (size == UButtonSize.l) {
      return AppDimensionsFontSize.l;
    } else {
      return AppDimensionsFontSize.xl;
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
      return AppDimensionsSize.s;
    } else if (size == UButtonSize.m) {
      return AppDimensionsSize.m;
    } else if (size == UButtonSize.l) {
      return AppDimensionsSize.l;
    } else {
      return AppDimensionsSize.xl;
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
                  fontSize: fontSize,
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
