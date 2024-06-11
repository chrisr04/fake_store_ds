part of 'fake_modal.dart';

/// A fake modal warning class that displays a warning dialog.
///
/// This class provides a static method, [show()], to display a modal warning dialog in the UI.
class FakeModalWarning {
  /// Displays a modal warning dialog.
  ///
  /// [context] is the [BuildContext] in which the dialog should be displayed.
  /// [canClose] indicates whether the dialog can be dismissed by tapping outside of it.
  /// [title] is the title of the warning dialog.
  /// [description] is an optional description text for the warning.
  /// [buttonLabel] is the label text for the button in the dialog.
  /// [onPressedButton] is a callback function triggered when the button in the dialog is pressed.
  ///
  /// Returns a [Future] that completes when the dialog is dismissed.
  ///
  /// Example usage:
  /// ```dart
  /// await FakeModalWarning.show(
  ///   context,
  ///   title: "The information will be send",
  ///   description: "Contact to support for more details",
  ///   buttonLabel: "OK",
  ///   onPressedButton: () {
  ///     // Handle button press
  ///   },
  /// );
  /// ```
  static Future<void> show(
    BuildContext context, {
    bool canClose = true,
    required String title,
    String? description,
    required String buttonLabel,
    required VoidCallback onPressedButton,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: canClose,
      builder: (context) => FakeModal(
        canClose: canClose,
        title: title,
        description: description,
        icon: FakeIcon(
          Icons.warning_rounded,
          size: 42.0,
          color: Theme.of(context).colorScheme.warning,
        ),
        bottomWidget: SizedBox(
          width: double.infinity,
          child: FakeButtonPrimary(
            onPressed: onPressedButton,
            size: FakeButtonSize.large,
            label: buttonLabel,
          ),
        ),
      ),
    );
  }
}
