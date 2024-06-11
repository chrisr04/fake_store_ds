import 'package:flutter/material.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class MoleculesAppBarsScreen extends StatelessWidget {
  const MoleculesAppBarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: FakeDefaultAppBar(
        title: 'FakeAppBars',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: FakeSpacing.md,
          vertical: FakeSpacing.lg,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: FakeSpacing.md,
              ),
              child: FakeTextHeading6('Default App Bar'),
            ),
            FakeDefaultAppBar(
              title: 'Soporte',
            )
          ],
        ),
      ),
    );
  }
}
