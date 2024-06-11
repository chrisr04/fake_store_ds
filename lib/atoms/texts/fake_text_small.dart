part of 'fake_text.dart';

/// A small fake text.
///
/// The default size of this widget is 10
///
/// see more [FakeText]
///
/// Example usage:
/// ```dart
/// FakeTextSmall('Hello, Flutter!')
/// ```
class FakeTextSmall extends StatelessWidget {
  const FakeTextSmall(
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
    final small = Theme.of(context).textTheme.bodySmall;
    return FakeText(
      key: key,
      label: label,
      fontSize: small?.fontSize ?? FakeTypographyFoundation.fontSizeSmall,
      color: color,
      fontStyle: fontStyle,
      fontWeight: weight ?? small?.fontWeight,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}
