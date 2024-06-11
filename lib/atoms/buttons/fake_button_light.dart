part of 'fake_button.dart';

/// A fake button with a light theme.
///
/// The [onPressed] callback is invoked when the button is pressed. The [label]
/// parameter specifies the text displayed on the button. The [size] parameter
/// determines the size of the button.
///
/// Example usage:
///
/// ```dart
/// FakeButtonLight(
///   onPressed: () {
///     // Add your onPressed logic here
///   },
///   label: 'Press Me',
/// )
/// ```
class FakeButtonLight extends StatelessWidget {
  /// Creates a fake button with a light theme.
  ///
  /// The [onPressed] parameter is required and specifies the callback to be invoked
  /// when the button is pressed.
  ///
  /// The [label] parameter is required and specifies the text displayed on the button.
  ///
  /// The [size] parameter specifies the size of the button. By default, it is set to
  /// [FakeButtonSize.medium].
  const FakeButtonLight({
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
  final FakeButtonSize size;

  @override
  Widget build(BuildContext context) {
    return FakeButton(
      onPressed: onPressed,
      size: size,
      color: Theme.of(context).colorScheme.background,
      labelColor: Theme.of(context).colorScheme.onBackground,
      label: label,
    );
  }
}
