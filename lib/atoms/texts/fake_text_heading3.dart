part of 'fake_text.dart';

/// A heading3 fake text.
///
/// The default size of this widget is 24
///
/// see more [FakeText]
///
/// Example usage:
/// ```dart
/// FakeTextHeading3('Hello, Flutter!')
/// ```
class FakeTextHeading3 extends StatelessWidget {
  const FakeTextHeading3(
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
    final heading3 = Theme.of(context).textTheme.displaySmall;
    return FakeText(
      key: key,
      label: label,
      fontSize: heading3?.fontSize ?? FakeTypographyFoundation.fontSizeH3,
      color: color,
      fontStyle: fontStyle,
      fontWeight: weight ?? heading3?.fontWeight,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}
