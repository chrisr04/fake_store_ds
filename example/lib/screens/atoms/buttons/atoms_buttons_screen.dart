import 'package:flutter/material.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class AtomsButtonsScreen extends StatelessWidget {
  const AtomsButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FakeDefaultAppBar(
        title: 'FakeButtons',
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: FakeSpacing.md,
          vertical: FakeSpacing.lg,
        ),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: FakeSpacing.md,
            ),
            child: FakeTextHeading6('Button Primary'),
          ),
          FakeButtonPrimary(
            onPressed: () {},
            label: 'Button primary',
            size: FakeButtonSize.large,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: FakeSpacing.md,
            ),
            child: FakeTextHeading6('Button Secondary'),
          ),
          FakeButtonSecondary(
            onPressed: () {},
            label: 'Button secondary',
            size: FakeButtonSize.large,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: FakeSpacing.md,
            ),
            child: FakeTextHeading6('Button Tertiary'),
          ),
          FakeButtonTertiary(
            onPressed: () {},
            label: 'Button tertiary',
            size: FakeButtonSize.large,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: FakeSpacing.md,
            ),
            child: FakeTextHeading6('Button Outlined Primary'),
          ),
          FakeButtonOutlinedPrimary(
            onPressed: () {},
            label: 'Button outlined primary',
            size: FakeButtonSize.large,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: FakeSpacing.md,
            ),
            child: FakeTextHeading6('Button Outlined Secondary'),
          ),
          FakeButtonOutlinedSecondary(
            onPressed: () {},
            label: 'Button outlined secondary',
            size: FakeButtonSize.large,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: FakeSpacing.md,
            ),
            child: FakeTextHeading6('Button Light'),
          ),
          Container(
            width: double.infinity,
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            padding: const EdgeInsets.symmetric(
              horizontal: FakeSpacing.md,
              vertical: FakeSpacing.sm,
            ),
            child: FakeButtonLight(
              onPressed: () {},
              label: 'Button light',
              size: FakeButtonSize.large,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: FakeSpacing.md,
            ),
            child: FakeTextHeading6('Button Outlined Light'),
          ),
          Container(
            width: double.infinity,
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            padding: const EdgeInsets.symmetric(
              horizontal: FakeSpacing.md,
              vertical: FakeSpacing.sm,
            ),
            child: FakeButtonOutlinedLight(
              onPressed: () {},
              label: 'Button outlined light',
              size: FakeButtonSize.large,
            ),
          ),
        ],
      ),
    );
  }
}
