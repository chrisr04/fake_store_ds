part of 'fake_button.dart';

/// A fake button with an outlined appearance, styled with primary theme color.
///
///
/// The outlined primary button style is commonly used to indicate a secondary action
/// that is less prominent than the primary action in a UI.
///
/// The [onPressed] callback is invoked when the button is pressed. The [label]
/// parameter specifies the text displayed on the button. The [size] parameter
/// determines the size of the button.
///
/// Example usage:
/// ```dart
/// FakeButtonOutlinedPrimary(
///   onPressed: () {
///     // Handle button press
///   },
///   label: 'Submit',
/// )
/// ```
class FakeButtonOutlinedPrimary extends StatelessWidget {
  /// Creates a fake outlined primary button.
  const FakeButtonOutlinedPrimary({
    super.key,
    required this.onPressed,
    required this.label,
    this.size = FakeButtonSize.medium,
  });

  /// The callback that is triggered when the button is pressed.
  ///
  /// If this is null, the button will be disabled.
  final VoidCallback? onPressed;

  /// Text to display on the button.
  final String label;

  /// Size of the button. Defaults to [FakeButtonSize.medium].
  final FakeButtonSize size;

  @override
  Widget build(BuildContext context) {
    return FakeButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
        side: BorderSide(
          color: Theme.of(context).primaryColor,
          width: 1.5,
        ),
      ),
      size: size,
      label: label,
      labelColor: Theme.of(context).primaryColor,
    );
  }
}
