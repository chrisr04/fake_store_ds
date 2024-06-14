import 'package:flutter/material.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class MoleculesCardsScreen extends StatelessWidget {
  const MoleculesCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FakeDefaultAppBar(
        title: 'FakeCards',
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: FakeSpacing.md,
          vertical: FakeSpacing.lg,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: FakeSpacing.md,
              ),
              child: FakeTextHeading6('Top Sticky Card'),
            ),
            FakeTopStickyCard(
              child: Center(
                child: FakeTextHeading5(
                  'FakeTopStickyCard',
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: FakeSpacing.md,
              ),
              child: FakeTextHeading6('Horizontal Image Card'),
            ),
            FakeHorizontalImageCard(
              onTap: () {},
              image: 'assets/images/molecule.png',
              title: 'Moléculas',
              titleWeight: FontWeight.w700,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: FakeSpacing.md,
              ),
              child: FakeTextHeading6('Product Card'),
            ),
            FakeProductCard(
              onTap: () {},
              onFilledButtonPressed: () {},
              onOutlinedButtonPressed: () {},
              imageUrl:
                  'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
              title: 'Brown Designer Bag',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              price: 250,
              filledButtonText: 'Añadir al carrito',
              outlinedButtonText: 'Comprar',
            )
          ],
        ),
      ),
    );
  }
}
