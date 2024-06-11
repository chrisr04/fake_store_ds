import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:flutter/material.dart';

class TemplatesErrorScreen extends StatelessWidget {
  const TemplatesErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FakeDefaultAppBar(
        title: 'FakeErrorTemplate',
      ),
      body: FakeErrorTemplate(
        imagePath: 'assets/images/error-illustration.png',
        error: 'Ha ocurrido un error inesperado',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        buttonLabel: 'Reintentar',
        onButtonPressed: () {},
      ),
    );
  }
}
