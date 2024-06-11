part of 'fake_button.dart';

/// A tertiary button.
///
/// The [onPressed] callback is invoked when the button is pressed. The [label]
/// parameter specifies the text displayed on the button. The [size] parameter
/// determines the size of the button.
///
/// Example usage:
/// ```dart
/// FakeButtonTertiary(
///   onPressed: () {
///     // Handle button press
///   },
///   label: 'Click Me',
/// );
/// ```
class FakeButtonTertiary extends StatelessWidget {
  /// Creates a `FakeButtonTertiary`.
  ///
  /// The [onPressed] and [label] parameters must not be null.
  /// The [size] defaults to `FakeButtonSize.medium` if not specified.
  const FakeButtonTertiary({
    super.key,
    required this.onPressed,
    required this.label,
    this.size = FakeButtonSize.medium,
  });

  /// The callback that is triggered when the button is pressed.
  ///
  /// If this is null, the button will be disabled.
  final VoidCallback? onPressed;

  /// The text label displayed on the button.
  ///
  /// This string is displayed inside the button.
  final String label;

  /// The size of the button.
  ///
  /// This property controls the dimensions of the button. Defaults to [FakeButtonSize.medium].
  final FakeButtonSize size;

  @override
  Widget build(BuildContext context) {
    return FakeButton(
      onPressed: onPressed,
      size: size,
      color: Theme.of(context).colorScheme.tertiary,
      labelColor: Theme.of(context).colorScheme.onTertiary,
      label: label,
    );
  }
}
