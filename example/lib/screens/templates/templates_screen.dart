import 'package:flutter/material.dart';
import 'package:example/routes/routes.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class TemplatesScreen extends StatelessWidget {
  const TemplatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FakeDefaultAppBar(
        title: 'Plantillas',
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: FakeSpacing.md,
          vertical: FakeSpacing.lg,
        ),
        children: [
          FakeListTile(
            onTap: () => Navigator.of(context).pushNamed(
              AppRoutes.templatesError,
            ),
            leadingIcon: Icons.error_outline,
            title: 'FakeErrorTemplate',
            subtitle: 'Error Template available in Fake Store DS',
          ),
        ],
      ),
    );
  }
}
