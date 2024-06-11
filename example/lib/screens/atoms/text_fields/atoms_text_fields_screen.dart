import 'package:flutter/material.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class AtomsTextFieldsScreen extends StatelessWidget {
  const AtomsTextFieldsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FakeDefaultAppBar(
        title: 'FakeTextFields',
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: FakeSpacing.md,
          vertical: FakeSpacing.lg,
        ),
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: FakeSpacing.md,
            ),
            child: FakeTextHeading6('Text field'),
          ),
          FakeTextField(
            hintText: 'Escribe un texto...',
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: FakeSpacing.md,
            ),
            child: FakeTextHeading6('Text field search'),
          ),
          FakeTextFieldSearch(
            hintText: 'Busca un producto...',
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: FakeSpacing.md,
            ),
            child: FakeTextHeading6('Text field obscure'),
          ),
          FakeTextFieldObscure(
            hintText: 'Escribe una contraseña',
          )
        ],
      ),
    );
  }
}
