import 'package:fake_store_ds/atoms/atoms.dart';
import 'package:fake_store_ds/tokens/tokens.dart';
import 'package:flutter/material.dart';

/// A widget that displays a template for handling errors or exceptional states.
class FakeInformationTemplate extends StatelessWidget {
  /// Creates a fake error template.
  ///
  /// [imagePath] is the path to the image asset to be displayed.
  ///
  /// [message] is the message to be shown.
  ///
  /// [description] is an optional description of the information.
  ///
  /// [onButtonPressed] is an optional callback function to be executed when the button is pressed.
  ///
  /// [buttonLabel] is the text to be displayed on the button. If not provided, a default label will be used.
  const FakeInformationTemplate({
    super.key,
    required this.imagePath,
    required this.message,
    this.description,
  });

  /// The path to the image asset to be displayed.
  final String imagePath;

  /// The message to be shown.
  final String message;

  /// An optional description of the information.
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(FakeSpacing.lg),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FakeImageAsset(
            path: imagePath,
            height: 230.0,
          ),
          const FakeSpacerL(),
          FakeTextHeading5(
            message,
            textAlign: TextAlign.center,
          ),
          if (description != null) ...[
            const FakeSpacerS(),
            FakeTextLarge(
              description!,
              textAlign: TextAlign.center,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ],
        ],
      ),
    );
  }
}
