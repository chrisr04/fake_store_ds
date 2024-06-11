part of 'fake_modal.dart';

/// A utility class for displaying a fake modal dialog for decision-making.
///
/// This class provides a simple way to show a modal dialog with two buttons,
/// allowing the user to make a decision. It can be customized with a title,
/// description, and labels for the buttons.
class FakeModalDecision {
  /// Displays the fake modal dialog for decision-making.
  ///
  /// Parameters:
  /// [context] The build context.
  /// [canClose] Whether the modal can be closed by tapping outside of it.
  /// [title] The title of the success modal.
  /// [description] The description text to display (optional).
  /// [filledButtonLabel] The label for the filled button.
  /// [outlinedButtonLabel] The label for the outlined button.
  /// [onPressedFilledButton] The callback function to be invoked when the filled button is pressed.
  /// [onPressedOutlinedButton] The callback function to be invoked when the outlined button is pressed.
  ///
  /// Example:
  ///
  /// ```dart
  /// await FakeModalDecision.show(
  ///   context,
  ///   title: 'Confirmation',
  ///   description: 'Are you sure you want to proceed?',
  ///   filledButtonLabel: 'Yes',
  ///   outlinedButtonLabel: 'No',
  ///   onPressedFilledButton: () {
  ///     // Handle 'Yes' button press
  ///   },
  ///   onPressedOutlinedButton: () {
  ///     // Handle 'No' button press
  ///   },
  /// );
  /// ```
  static Future<void> show(
    BuildContext context, {
    bool canClose = true,
    required String title,
    String? description,
    required String filledButtonLabel,
    required String outlinedButtonLabel,
    required VoidCallback onPressedFilledButton,
    required VoidCallback onPressedOutlinedButton,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: canClose,
      builder: (context) => FakeModal(
        canClose: canClose,
        title: title,
        description: description,
        bottomWidget: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: FakeButtonPrimary(
                onPressed: onPressedFilledButton,
                size: FakeButtonSize.large,
                label: filledButtonLabel,
              ),
            ),
            const FakeSpacerXS(),
            SizedBox(
              width: double.infinity,
              child: FakeButtonOutlinedPrimary(
                onPressed: onPressedOutlinedButton,
                size: FakeButtonSize.large,
                label: outlinedButtonLabel,
              ),
            )
          ],
        ),
      ),
    );
  }
}
