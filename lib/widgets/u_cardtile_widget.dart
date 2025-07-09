import 'package:flutter/material.dart';

import '../utils/utils_export.dart';
import 'widgets_export.dart';

/// A customizable card widget used for displaying content
/// such as title, subtitle, and optional actions.
///
/// This widget supports different types via [UCardType]:
/// - [UCardType.none] (default): A standard card with optional trailing arrow.
/// - [UCardType.tapCard]: Makes the entire card tappable.
/// - [UCardType.titleWithButton]: Displays a title with a trailing action button.
class UCardTileWidget extends StatelessWidget {
  /// The type of the card that defines its layout and behavior.
  ///
  /// See [UCardType] for available options.
  final UCardType type;

  /// Called when the card is tapped. Only works if [type] is [UCardType.tapCard].
  final Function()? onTap;

  /// The main title text displayed in the card.
  final String? textTitle;

  /// The text for the action button, shown only in [UCardType.titleWithButton].
  final String? buttonText;

  /// The supporting subtitle text displayed below the title.
  final String? textSupporting;

  /// Called when the title button is pressed.
  ///
  /// Only used in [UCardType.titleWithButton].
  final Function()? onPressedButtonTitle;

  /// Creates a [UCardTileWidget].
  ///
  /// You can customize the card's [type], [textTitle], [textSupporting],
  /// action button with [buttonText], and tap behavior with [onTap] or [onPressedButtonTitle].
  const UCardTileWidget({
    super.key,
    this.onTap,
    this.textTitle,
    this.buttonText,
    this.textSupporting,
    this.onPressedButtonTitle,
    this.type = UCardType.none,
  });

  Widget _titleWidget(BuildContext context) {
    if (type == UCardType.titleWithButton) {
      return Row(
        children: [
          Expanded(
            child: Text(
              textTitle ?? "",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: AppDimensionsFontSize.l.responsive(context),
              ),
            ),
          ),
          UButtonWidget(
            text: buttonText ?? "",
            style: UButtonStyle.fill,
            size: UButtonSize.s,
            radius: AppDimensionsRadius.small,
            onPressed: onPressedButtonTitle,
          ),
        ],
      );
    } else {
      return textTitle != null
          ? Text(
              textTitle!,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: AppDimensionsFontSize.l.responsive(context),
              ),
            )
          : SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).colorScheme;
    return Card(
      color: themeColor.surface,
      elevation: 10,
      shadowColor: themeColor.shadow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppDimensionsRadius.largeIncreased,
        ),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppDimensionsRadius.largeIncreased,
          ),
        ),
        title: _titleWidget(context),
        subtitle: textSupporting != null
            ? Text(
                textSupporting!,
                style: TextStyle(
                  color: themeColor.onSurface.withAlpha(150),
                  fontSize: AppDimensionsFontSize.m.responsive(context),
                ),
              )
            : SizedBox.shrink(),
        trailing: type == UCardType.titleWithButton
            ? null
            : type == UCardType.tapCard
                ? null
                : InkWell(
                    onTap: onTap,
                    child: IconButton(
                      onPressed: onTap,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: themeColor.onSurface,
                      ),
                    ),
                  ),
        onTap: type == UCardType.tapCard ? onTap : null,
      ),
    );
  }
}
