import 'package:fake_store_ds/atoms/atoms.dart';
import 'package:fake_store_ds/foundations/foundations.dart';
import 'package:fake_store_ds/tokens/tokens.dart';
import 'package:flutter/material.dart';

part 'fake_button_primary.dart';
part 'fake_button_secondary.dart';
part 'fake_button_tertiary.dart';
part 'fake_button_outlined_primary.dart';
part 'fake_button_outlined_secondary.dart';
part 'fake_button_light.dart';
part 'fake_button_outlined_light.dart';

/// Enum representing the different sizes for the [FakeButton].
enum FakeButtonSize { small, medium, large }

/// A custom button widget that mimics a material design button.
///
/// The [FakeButton] is a configurable button with options for size, color,
/// shape, and other properties. It displays a label and triggers a callback
/// when pressed.
class FakeButton extends StatelessWidget {
  /// Creates a [FakeButton].
  ///
  /// The [onPressed] and [label] parameters are required.
  /// The [enabled] parameter defaults to true, and the [size] parameter
  /// defaults to [FakeButtonSize.medium].
  const FakeButton({
    super.key,
    this.onPressed,
    required this.label,
    this.color,
    this.height,
    this.shape,
    this.size = FakeButtonSize.medium,
    this.labelColor,
  });

  /// The callback that is triggered when the button is pressed.
  ///
  /// If this is null, the button will be disabled.
  final VoidCallback? onPressed;

  /// The text label displayed on the button.
  final String label;

  /// The background color of the button.
  final Color? color;

  /// The height of the button.
  final double? height;

  /// The shape of the button. Defaults to a [RoundedRectangleBorder]
  /// with a circular radius of 4.0 if not specified.
  final ShapeBorder? shape;

  /// The size of the button, which affects its padding and font weight.
  /// Defaults to [FakeButtonSize.medium].
  final FakeButtonSize size;

  /// The color of the label text.
  final Color? labelColor;

  FontWeight get _fontWeight => switch (size) {
        FakeButtonSize.small => FontWeight.w500,
        FakeButtonSize.medium => FontWeight.w600,
        FakeButtonSize.large => FontWeight.w600
      };

  EdgeInsets get _padding => switch (size) {
        FakeButtonSize.small => const EdgeInsets.symmetric(
            vertical: FakeSpacing.xs,
            horizontal: FakeSpacing.sm,
          ),
        FakeButtonSize.medium => const EdgeInsets.symmetric(
            vertical: FakeSpacing.sm,
            horizontal: FakeSpacing.md,
          ),
        FakeButtonSize.large => const EdgeInsets.symmetric(
            vertical: FakeSpacing.sl,
            horizontal: FakeSpacing.md,
          )
      };

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      elevation: 0.0,
      highlightElevation: 0.0,
      height: height,
      padding: EdgeInsets.zero,
      disabledColor: Theme.of(context).colorScheme.onPrimaryContainer,
      shape: shape ??
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
      child: Padding(
        padding: _padding,
        child: FakeText(
          label: label,
          fontSize:
              _fontSize(context) ?? FakeTypographyFoundation.fontSizeMedium,
          color: labelColor,
          fontWeight: _fontWeight,
          textOverflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  double? _fontSize(BuildContext context) => switch (size) {
        FakeButtonSize.small => Theme.of(context).textTheme.bodySmall?.fontSize,
        FakeButtonSize.medium =>
          Theme.of(context).textTheme.bodyMedium?.fontSize,
        FakeButtonSize.large => Theme.of(context).textTheme.bodyLarge?.fontSize
      };
}
