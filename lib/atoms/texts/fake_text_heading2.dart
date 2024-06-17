part of 'fake_text.dart';

/// A heading2 fake text.
///
/// The default size of this widget is 28
///
/// see more [FakeText]
///
/// Example usage:
/// ```dart
/// FakeTextHeading2('Hello, Flutter!')
/// ```
class FakeTextHeading2 extends StatelessWidget {
  const FakeTextHeading2(
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
    final heading2 = Theme.of(context).textTheme.displayMedium;
    return FakeText(
      label: label,
      fontSize: heading2?.fontSize ?? FakeTypographyFoundation.fontSizeH2,
      color: color,
      fontStyle: fontStyle,
      fontWeight: weight ?? heading2?.fontWeight,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}
