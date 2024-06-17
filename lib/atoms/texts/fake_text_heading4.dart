part of 'fake_text.dart';

/// A heading4 fake text.
///
/// The default size of this widget is 20
///
/// see more [FakeText]
///
/// Example usage:
/// ```dart
/// FakeTextHeading4('Hello, Flutter!')
/// ```
class FakeTextHeading4 extends StatelessWidget {
  const FakeTextHeading4(
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
    final heading4 = Theme.of(context).textTheme.headlineMedium;
    return FakeText(
      label: label,
      fontSize: heading4?.fontSize ?? FakeTypographyFoundation.fontSizeH4,
      color: color,
      fontStyle: fontStyle,
      fontWeight: weight ?? heading4?.fontWeight,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}
