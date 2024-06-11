import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:flutter/material.dart';

class PagesErrorScreen extends StatelessWidget {
  const PagesErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FakeErrorPage(
      appBarTitle: 'Error Page',
      imagePath: 'assets/images/error-illustration.png',
      error: 'Ha ocurrido un error inesperado',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      buttonLabel: 'Reintentar',
      onButtonPressed: () {},
    );
  }
}
