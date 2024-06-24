part of 'fake_modal.dart';

/// A utility class for displaying a modal loading indicator dialog in Flutter applications.
class FakeModalLoading {
  /// Shows a modal loading dialog with an optional loading text.
  ///
  /// This method displays a dialog that prevents user interaction with the rest of the
  /// application until dismissed. It includes a circular progress indicator and an optional
  /// text message below it. The dialog's appearance is themed according to the current
  /// context's background color scheme.
  ///
  /// Parameters:
  /// - `context`: The [BuildContext] used to display the dialog.
  /// - `loadingText`: Optional text to display below the progress indicator.
  ///
  /// Example usage:
  /// ```dart
  /// await FakeModalLoading.show(context, loadingText: 'Loading...');
  /// ```
  ///
  /// The dialog is dismissible only programmatically, ensuring the user cannot dismiss
  /// it by tapping outside or using the back button.
  static Future<void> show(BuildContext context, {String? loadingText}) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => BlockSemantics(
        child: PopScope(
          canPop: false,
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            surfaceTintColor: Theme.of(context).colorScheme.background,
            child: Padding(
              padding: const EdgeInsets.all(FakeSpacing.md),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(),
                  const FakeSpacerM(),
                  FakeTextLarge(
                    loadingText ?? '',
                    weight: FontWeight.w600,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
