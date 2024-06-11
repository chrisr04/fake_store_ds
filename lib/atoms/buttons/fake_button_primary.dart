part of 'fake_button.dart';

/// A primary button.
///
/// The [onPressed] callback is invoked when the button is pressed. The [label]
/// parameter specifies the text displayed on the button. The [size] parameter
/// determines the size of the button.
///
/// Example usage:
/// ```dart
/// FakeButtonPrimary(
///   onPressed: () {
///     // Handle the button press
///   },
///   label: 'Click Me',
/// );
/// ```
class FakeButtonPrimary extends StatelessWidget {
  /// Creates a primary button.
  ///
  /// The [onPressed] and [label] parameters must not be null. The [size]
  /// defaults to [FakeButtonSize.medium] if not provided. The button is enabled
  /// by default unless [enabled] is set to false.
  const FakeButtonPrimary({
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
  ///
  /// Must not be null.
  final String label;

  /// The size of the button.
  ///
  /// Defaults to [FakeButtonSize.medium].
  final FakeButtonSize size;

  @override
  Widget build(BuildContext context) {
    return FakeButton(
      onPressed: onPressed,
      size: size,
      color: Theme.of(context).primaryColor,
      labelColor: Theme.of(context).colorScheme.onPrimary,
      label: label,
    );
  }
}
