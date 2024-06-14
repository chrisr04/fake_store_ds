import 'package:fake_store_ds/foundations/foundations.dart';
import 'package:flutter/material.dart';
import 'package:fake_store_ds/atoms/atoms.dart';
import 'package:fake_store_ds/tokens/tokens.dart';

/// A visual component resembling a chip, used for displaying short, contextual pieces of information.
///
/// The [label] parameter must not be null and represents the text displayed inside the chip.
/// The [backgroundColor] parameter sets the background color of the chip, defaulting to the
/// tertiary color defined in the FakeColorsFoundation.
/// The [textColor] parameter sets the color of the label text, defaulting to the text color
/// that contrasts well with the chosen background color.
///
/// Example:
/// ```dart
/// FakeChip(
///   label: 'Flutter',
///   backgroundColor: Colors.blue,
///   textColor: Colors.white,
/// )
/// ```
class FakeChip extends StatelessWidget {
  /// Creates a FakeChip.
  ///
  /// The [label] parameter must not be null.
  /// The [backgroundColor] defaults to FakeColorsFoundation.tertiaryColor if not specified.
  /// The [textColor] defaults to FakeColorsFoundation.onTertiary if not specified.
  const FakeChip({
    super.key,
    required this.label,
    this.backgroundColor = FakeColorsFoundation.tertiaryColor,
    this.textColor = FakeColorsFoundation.onTertiary,
  });

  /// The text displayed inside the chip.
  final String label;

  /// The background color of the chip.
  final Color backgroundColor;

  /// The color of the label text.
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: FakeSpacing.md,
          vertical: FakeSpacing.sm,
        ),
        child: FakeTextLarge(
          label,
          color: textColor,
          weight: FontWeight.w500,
        ),
      ),
    );
  }
}
