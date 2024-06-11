import 'package:flutter/material.dart';
import 'package:fake_store_ds/molecules/molecules.dart';
import 'package:fake_store_ds/templates/templates.dart';

/// A widget that displays an error page with a customizable app bar,
/// image, error message, description, and a button to handle an action.
///
///
///Example usage:
/// ```dart
/// FakeErrorPage(
///   appBarTitle: 'Error',
///   imagePath: 'assets/error_image.png',
///   error: '404 Not Found',
///   description: 'The page you are looking for does not exist.',
///   buttonLabel: 'Retry',
///   onButtonPressed: () {
///     // Handle button press action.
///   },
/// );
/// ```
class FakeErrorPage extends StatelessWidget {
  /// Creates a [FakeErrorPage] widget.
  ///
  /// The [appBarTitle], [imagePath], [error], [description], [buttonLabel],
  /// and [onButtonPressed] parameters must not be null.
  const FakeErrorPage({
    super.key,
    required this.appBarTitle,
    required this.imagePath,
    required this.error,
    required this.description,
    required this.onButtonPressed,
    required this.buttonLabel,
  });

  /// The title to be displayed in the app bar.
  final String appBarTitle;

  /// The path to the image to be displayed on the error page.
  final String imagePath;

  /// The error message to be displayed on the error page.
  final String error;

  /// The description of the error to provide more context to the user.
  final String description;

  /// The label for the button that the user can press to take an action.
  final String buttonLabel;

  /// The callback that is invoked when the button is pressed.
  final VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FakeDefaultAppBar(
        title: appBarTitle,
      ),
      body: FakeErrorTemplate(
        imagePath: imagePath,
        error: error,
        description: description,
        buttonLabel: buttonLabel,
        onButtonPressed: onButtonPressed,
      ),
    );
  }
}
