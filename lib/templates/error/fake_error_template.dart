import 'package:fake_store_ds/atoms/atoms.dart';
import 'package:fake_store_ds/tokens/tokens.dart';
import 'package:flutter/material.dart';

/// A widget that displays a template for handling errors or exceptional states.
class FakeErrorTemplate extends StatelessWidget {
  /// Creates a fake error template.
  ///
  /// [imagePath] is the path to the image asset to be displayed.
  ///
  /// [error] is the error message to be shown.
  ///
  /// [description] is an optional description of the error.
  ///
  /// [onButtonPressed] is an optional callback function to be executed when the button is pressed.
  ///
  /// [buttonLabel] is the text to be displayed on the button. If not provided, a default label will be used.
  const FakeErrorTemplate({
    super.key,
    required this.imagePath,
    required this.error,
    this.description,
    this.onButtonPressed,
    this.buttonLabel,
  });

  /// The path to the image asset to be displayed.
  final String imagePath;

  /// The error message to be shown.
  final String error;

  /// An optional description of the error.
  final String? description;

  /// An optional callback function to be executed when the button is pressed.
  final VoidCallback? onButtonPressed;

  /// The text to be displayed on the button. If not provided, a default label will be used.
  final String? buttonLabel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
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
                  error,
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
                if (onButtonPressed != null) ...[
                  const FakeSpacerXL(),
                  SizedBox(
                    width: double.infinity,
                    child: FakeButtonPrimary(
                      onPressed: onButtonPressed!,
                      label: buttonLabel ?? '',
                      size: FakeButtonSize.large,
                    ),
                  ),
                ]
              ],
            ),
          ),
        )
      ],
    );
  }
}
