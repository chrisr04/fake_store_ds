import 'package:flutter/material.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class AtomsImagesScreen extends StatelessWidget {
  const AtomsImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FakeDefaultAppBar(
        title: 'FakeImages',
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
            child: FakeTextHeading6('Asset image'),
          ),
          FakeImageAsset(
            path: 'assets/images/science.png',
            height: 150.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: FakeSpacing.md,
            ),
            child: FakeTextHeading6('Network image'),
          ),
          FakeImageNetwork(
            url:
                'https://cdn.andro4all.com/andro4all/2023/04/34ef9217-52d8-4e4b-9ba1-349e7570d8e4.jpg',
            height: 150.0,
          )
        ],
      ),
    );
  }
}
