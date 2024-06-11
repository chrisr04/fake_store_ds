part of 'fake_button.dart';

/// A secondary outlined button.
///
/// The [onPressed] callback is invoked when the button is pressed. The [label]
/// parameter specifies the text displayed on the button. The [size] parameter
/// determines the size of the button.
///
/// Example usage:
/// ```dart
/// FakeButtonOutlinedSecondary(
///   onPressed: () {
///     // Handle the button press
///   },
///   label: 'Click Me',
/// );
/// ```
class FakeButtonOutlinedSecondary extends StatelessWidget {
  /// Creates a secondary outlined fake button.
  ///
  /// The [onPressed] and [label] parameters are required, while [size] defaults to [FakeButtonSize.medium].
  const FakeButtonOutlinedSecondary({
    super.key,
    required this.onPressed,
    required this.label,
    this.size = FakeButtonSize.medium,
  });

  /// The callback that is triggered when the button is pressed.
  ///
  /// If this is null, the button will be disabled.
  final VoidCallback? onPressed;

  /// The label displayed on the button.
  final String label;

  /// The size of the button, defaults to [FakeButtonSize.medium].
  final FakeButtonSize size;

  @override
  Widget build(BuildContext context) {
    return FakeButton(
      onPressed: onPressed,
      size: size,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
        side: BorderSide(
          color: Theme.of(context).colorScheme.secondary,
          width: 1.5,
        ),
      ),
      label: label,
      labelColor: Theme.of(context).colorScheme.secondary,
    );
  }
}
