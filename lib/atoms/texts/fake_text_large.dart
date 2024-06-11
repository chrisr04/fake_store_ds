part of 'fake_text.dart';

/// A large fake text.
///
/// The default size of this widget is 14
///
/// see more [FakeText]
///
/// Example usage:
/// ```dart
/// FakeTextLarge('Hello, Flutter!')
/// ```
class FakeTextLarge extends StatelessWidget {
  const FakeTextLarge(
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
    final large = Theme.of(context).textTheme.bodyLarge;
    return FakeText(
      key: key,
      label: label,
      fontSize: large?.fontSize ?? FakeTypographyFoundation.fontSizeLarge,
      color: color,
      fontStyle: fontStyle,
      fontWeight: weight ?? large?.fontWeight,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}
