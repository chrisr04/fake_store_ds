part of 'fake_button.dart';

/// A secondary button.
///
/// The [onPressed] callback is invoked when the button is pressed. The [label]
/// parameter specifies the text displayed on the button. The [size] parameter
/// determines the size of the button.
///
/// Example usage:
/// ```dart
/// FakeButtonSecondary(
///   onPressed: () {
///     // Handle button press
///   },
///   label: 'Press Me',
/// );
/// ```
class FakeButtonSecondary extends StatelessWidget {
  /// Creates a secondary style button.
  ///
  /// The [onPressed] and [label] parameters must not be null.
  /// The [enabled] parameter defaults to true if not provided.
  /// The [size] parameter defaults to [FakeButtonSize.medium] if not provided.
  const FakeButtonSecondary({
    super.key,
    required this.onPressed,
    required this.label,
    this.size = FakeButtonSize.medium,
  });

  /// The callback that is triggered when the button is pressed.
  ///
  /// If this is null, the button will be disabled.
  final VoidCallback? onPressed;

  /// The text label to display on the button.
  final String label;

  /// The size of the button, which affects its overall dimensions.
  ///
  /// Defaults to [FakeButtonSize.medium].
  final FakeButtonSize size;

  @override
  Widget build(BuildContext context) {
    return FakeButton(
      onPressed: onPressed,
      size: size,
      color: Theme.of(context).colorScheme.secondary,
      labelColor: Theme.of(context).colorScheme.onSecondary,
      label: label,
    );
  }
}
