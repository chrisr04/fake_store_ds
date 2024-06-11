import 'package:flutter/material.dart';
import 'package:fake_store_ds/foundations/foundations.dart';

part 'fake_text_heading1.dart';
part 'fake_text_heading2.dart';
part 'fake_text_heading3.dart';
part 'fake_text_heading4.dart';
part 'fake_text_heading5.dart';
part 'fake_text_heading6.dart';
part 'fake_text_large.dart';
part 'fake_text_medium.dart';
part 'fake_text_small.dart';

/// A widget that displays a text with customizable styling.
///
/// This widget is a convenience wrapper around the [Text] widget, allowing for
/// easier creation of styled text without the need to specify each individual
/// property of the [TextStyle].
///
/// The [FakeText] widget takes in parameters for the text content, font size,
/// color, font weight, font style, text alignment, letter spacing, maximum
/// number of lines, text decoration, and shadows. All of these parameters are
/// optional except for [label] and [fontSize].
///
/// Example usage:
/// ```dart
/// FakeText(
///   label: 'Hello, Flutter!',
///   fontSize: 20,
///   color: Colors.blue,
///   fontWeight: FontWeight.bold,
///   maxLines: 2,
///   textAlign: TextAlign.center,
/// )
/// ```
class FakeText extends StatelessWidget {
  /// Creates a [FakeText] widget.
  ///
  /// The [label] parameter is required and specifies the text content to display.
  ///
  /// The [fontSize] parameter is required and specifies the size of the text.
  ///
  /// The [textOverflow] parameter specifies how overflowing text should be handled.
  ///
  /// The [color] parameter specifies the color of the text.
  ///
  /// The [fontWeight] parameter specifies the weight of the font.
  ///
  /// The [fontStyle] parameter specifies the style of the font.
  ///
  /// The [textAlign] parameter specifies the alignment of the text.
  ///
  /// The [letterSpacing] parameter specifies the space between letters.
  ///
  /// The [maxLines] parameter specifies the maximum number of lines to display.
  ///
  /// The [decoration] parameter specifies decorations to apply to the text.
  ///
  /// The [shadows] parameter specifies the shadows cast by the text.
  const FakeText({
    super.key,
    required this.label,
    required this.fontSize,
    this.textOverflow,
    this.color,
    this.fontWeight,
    this.fontStyle,
    this.textAlign,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
    this.shadows,
  });

  /// The text content to display.
  final String label;

  /// The size of the text.
  final double fontSize;

  /// How overflowing text should be handled.
  final TextOverflow? textOverflow;

  /// The color of the text.
  final Color? color;

  /// The weight of the font.
  final FontWeight? fontWeight;

  /// The style of the font.
  final FontStyle? fontStyle;

  /// The alignment of the text.
  final TextAlign? textAlign;

  /// The space between letters.
  final double? letterSpacing;

  /// The maximum number of lines to display.
  final int? maxLines;

  /// Decorations to apply to the text.
  final TextDecoration? decoration;

  /// Shadows cast by the text.
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle ?? FontStyle.normal,
        letterSpacing: letterSpacing,
        decoration: decoration ?? TextDecoration.none,
        overflow: textOverflow,
        shadows: shadows,
      ),
    );
  }
}
