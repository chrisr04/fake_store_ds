part of 'fake_modal.dart';

/// A fake modal for displaying success messages.
class FakeModalSuccess {
  /// Displays a success modal.
  ///
  /// [context] The build context.
  /// [canClose] Whether the modal can be closed by tapping outside of it.
  /// [title] The title of the success modal.
  /// [description] The description text to display (optional).
  /// [buttonLabel] The label for the action button.
  /// [onPressedButton] The callback function to be invoked when the action button is pressed.
  ///
  /// Example usage:
  /// ```dart
  /// await FakeModalSuccess.show(
  ///   context,
  ///   title: "Operation completes successfully",
  ///   description: "Please click ok to continue",
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
          Icons.check_circle_rounded,
          size: 40.0,
          color: Theme.of(context).colorScheme.success,
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
