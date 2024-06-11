import 'package:flutter/material.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class AtomsSpacersScreen extends StatelessWidget {
  const AtomsSpacersScreen({super.key});

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
        children: [
          const FakeTextHeading6('Spacer XXL'),
          ColoredBox(
            color: Theme.of(context).primaryColor,
            child: const FakeSpacerXXL(),
          ),
          const FakeTextHeading6('Spacer XL'),
          ColoredBox(
            color: Theme.of(context).primaryColor,
            child: const FakeSpacerXL(),
          ),
          const FakeTextHeading6('Spacer L'),
          ColoredBox(
            color: Theme.of(context).primaryColor,
            child: const FakeSpacerL(),
          ),
          const FakeTextHeading6('Spacer M'),
          ColoredBox(
            color: Theme.of(context).primaryColor,
            child: const FakeSpacerM(),
          ),
          const FakeTextHeading6('Spacer S'),
          ColoredBox(
            color: Theme.of(context).primaryColor,
            child: const FakeSpacerS(),
          ),
          const FakeTextHeading6('Spacer XS'),
          ColoredBox(
            color: Theme.of(context).primaryColor,
            child: const FakeSpacerXS(),
          ),
          const FakeTextHeading6('Spacer XXS'),
          ColoredBox(
            color: Theme.of(context).primaryColor,
            child: const FakeSpacerXXS(),
          ),
        ],
      ),
    );
  }
}
