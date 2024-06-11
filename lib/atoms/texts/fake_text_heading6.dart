part of 'fake_text.dart';

/// A heading6 fake text.
///
/// The default size of this widget is 16
///
/// see more [FakeText]
///
/// Example usage:
/// ```dart
/// FakeTextHeading6('Hello, Flutter!')
/// ```
class FakeTextHeading6 extends StatelessWidget {
  const FakeTextHeading6(
    this.label, {
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
    this.shadows,
    this.fontStyle,
  });

  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;
  final List<Shadow>? shadows;
  final FontStyle? fontStyle;

  @override
  Widget build(BuildContext context) {
    final heading6 = Theme.of(context).textTheme.titleLarge;
    return FakeText(
      key: key,
      label: label,
      fontSize: heading6?.fontSize ?? FakeTypographyFoundation.fontSizeH6,
      color: color,
      fontStyle: fontStyle,
      fontWeight: weight ?? heading6?.fontWeight,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}
