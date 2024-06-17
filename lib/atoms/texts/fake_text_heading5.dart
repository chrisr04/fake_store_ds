part of 'fake_text.dart';

/// A heading5 fake text.
///
/// The default size of this widget is 18
///
/// see more [FakeText]
///
/// Example usage:
/// ```dart
/// FakeTextHeading5('Hello, Flutter!')
/// ```
class FakeTextHeading5 extends StatelessWidget {
  const FakeTextHeading5(
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
    final heading5 = Theme.of(context).textTheme.headlineSmall;
    return FakeText(
      label: label,
      fontSize: heading5?.fontSize ?? FakeTypographyFoundation.fontSizeH5,
      color: color,
      fontStyle: fontStyle,
      fontWeight: weight ?? heading5?.fontWeight,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}
