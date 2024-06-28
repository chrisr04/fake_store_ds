part of 'fake_button.dart';

/// A fake button with an outlined light style.
///
///
/// The [onPressed] callback is invoked when the button is pressed. The [label]
/// parameter specifies the text displayed on the button. The [size] parameter
/// determines the size of the button.
///
/// Example usage:
///
/// ```dart
/// FakeButtonOutlinedLight(
///   onPressed: () {
///     // Add your onPressed logic here
///   },
///   label: 'Press Me',
/// )
/// ```
class FakeButtonOutlinedLight extends StatelessWidget {
  /// Creates a fake outlined light button.
  const FakeButtonOutlinedLight({
    super.key,
    required this.onPressed,
    required this.label,
    this.size = FakeButtonSize.medium,
  });

  /// The callback that is triggered when the button is pressed.
  ///
  /// If this is null, the button will be disabled.
  final VoidCallback? onPressed;

  /// The text displayed on the button.
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
        side: BorderSide(
          color: Theme.of(context).colorScheme.surface,
          width: 1.5,
        ),
      ),
      label: label,
      labelColor: Theme.of(context).colorScheme.surface,
    );
  }
}
