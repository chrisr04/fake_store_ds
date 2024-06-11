import 'package:flutter/material.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class AtomsTextsScreen extends StatelessWidget {
  const AtomsTextsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FakeDefaultAppBar(
        title: 'FakeTexts',
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: FakeSpacing.md,
          vertical: FakeSpacing.lg,
        ),
        children: const [
          FakeTextHeading1('Heading 1'),
          FakeTextHeading2('Heading 2'),
          FakeTextHeading3('Heading 3'),
          FakeTextHeading4('Heading 4'),
          FakeTextHeading5('Heading 5'),
          FakeTextHeading6('Heading 6'),
          FakeTextLarge('Large'),
          FakeTextMedium('Medium'),
          FakeTextSmall('Small'),
        ],
      ),
    );
  }
}
