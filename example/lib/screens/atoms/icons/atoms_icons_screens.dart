import 'package:flutter/material.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class AtomsIconsScreen extends StatelessWidget {
  const AtomsIconsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FakeDefaultAppBar(
        title: 'FakeIcons',
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: FakeSpacing.md,
          vertical: FakeSpacing.lg,
        ),
        children: const [
          Wrap(
            spacing: FakeSpacing.md,
            runSpacing: FakeSpacing.md,
            children: [
              IconBox(
                icon: Icons.check_rounded,
                name: 'check_rounded',
              ),
              IconBox(
                icon: Icons.check_circle_rounded,
                name: 'check_circle_rounded',
              ),
              IconBox(
                icon: Icons.text_fields_rounded,
                name: 'text_fields_rounded',
              ),
              IconBox(
                icon: Icons.smart_button_outlined,
                name: 'smart_button_outlined',
              ),
              IconBox(
                icon: Icons.emoji_emotions_outlined,
                name: 'emoji_emotions_outlined',
              ),
              IconBox(
                icon: Icons.space_bar_rounded,
                name: 'space_bar_rounded',
              ),
              IconBox(
                icon: Icons.image_outlined,
                name: 'image_outlined',
              ),
              IconBox(
                icon: Icons.chevron_left_rounded,
                name: 'chevron_left_rounded',
              ),
              IconBox(
                icon: Icons.chevron_right,
                name: 'chevron_right',
              ),
              IconBox(
                icon: Icons.shopping_cart,
                name: 'shopping_cart',
              ),
              IconBox(
                icon: Icons.shopping_cart_outlined,
                name: 'shopping_cart_outlined',
              ),
              IconBox(
                icon: Icons.add_shopping_cart_rounded,
                name: 'add_shopping_cart_rounded',
              ),
              IconBox(
                icon: Icons.shopping_cart_checkout_rounded,
                name: 'shopping_cart_checkout_rounded',
              ),
              IconBox(
                icon: Icons.add_rounded,
                name: 'add_rounded',
              ),
              IconBox(
                icon: Icons.warning_rounded,
                name: 'warning_rounded',
              ),
              IconBox(
                icon: Icons.error_rounded,
                name: 'error_rounded',
              ),
              IconBox(
                icon: Icons.info_rounded,
                name: 'info_rounded',
              ),
              IconBox(
                icon: Icons.close_rounded,
                name: 'close_rounded',
              ),
              IconBox(
                icon: Icons.search_rounded,
                name: 'search_rounded',
              ),
              IconBox(
                icon: Icons.shopping_bag_rounded,
                name: 'shopping_bag_rounded',
              ),
              IconBox(
                icon: Icons.shopping_basket_rounded,
                name: 'shopping_basket_rounded',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconBox extends StatelessWidget {
  const IconBox({
    super.key,
    required this.icon,
    required this.name,
  });

  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.0,
      child: Column(
        children: [
          FakeIcon(icon),
          FakeTextMedium(
            name,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
