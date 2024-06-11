part of 'fake_modal.dart';

/// A utility class for showing a fake modal error dialog.
class FakeModalError {
  /// Displays a modal error dialog.
  ///
  /// Parameters:
  /// [context] The build context.
  /// [canClose] Whether the modal can be closed by tapping outside of it.
  /// [title] The title of the success modal.
  /// [description] The description text to display (optional).
  /// [buttonLabel] The label for the action button.
  /// [onPressedButton] The callback function to be invoked when the action button is pressed.
  ///
  /// Returns a Future that resolves when the dialog is dismissed.
  ///
  /// Example usage:
  /// ```dart
  /// await FakeModalError.show(
  ///   context,
  ///   title: "Error",
  ///   description: "Something went wrong. Please try again.",
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
          Icons.error_rounded,
          size: 40.0,
          color: Theme.of(context).colorScheme.error,
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
