import 'package:flutter/material.dart';
import 'package:fake_store_ds/molecules/molecules.dart';
import 'package:fake_store_ds/templates/templates.dart';

class FakeErrorPage extends StatelessWidget {
  const FakeErrorPage({
    super.key,
    required this.appBarTitle,
    required this.imagePath,
    required this.error,
    required this.description,
    required this.onButtonPressed,
    required this.buttonLabel,
  });

  final String appBarTitle;
  final String imagePath;
  final String error;
  final String description;
  final String buttonLabel;
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
