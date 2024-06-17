part of 'fake_text.dart';

/// A heading1 fake text.
///
/// The default size of this widget is 32
///
/// see more [FakeText]
///
/// Example usage:
/// ```dart
/// FakeTextHeading1('Hello, Flutter!')
/// ```
class FakeTextHeading1 extends StatelessWidget {
  const FakeTextHeading1(
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
    final heading1 = Theme.of(context).textTheme.displayLarge;
    return FakeText(
      label: label,
      fontSize: heading1?.fontSize ?? FakeTypographyFoundation.fontSizeH1,
      color: color,
      fontStyle: fontStyle,
      fontWeight: weight ?? heading1?.fontWeight,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}
