import 'package:flutter/material.dart';
import 'package:fake_store_ds/atoms/atoms.dart';
import 'package:fake_store_ds/tokens/tokens.dart';

/// A fake horizontal product card.
///
/// This widget is used to display a product with its image, title, description,
/// price, and two buttons: one filled and one outlined. It also provides callbacks
/// for when the card is tapped and when the buttons are pressed.
///
/// Example usage:
/// ```dart
/// FakeHorizontalProductCard(
///   imageUrl: 'https://example.com/image.jpg',
///   title: 'Browm bag',
///   description: 'Awesome bag for all chances',
///   price: 200.0,
///   filledButtonText: 'Add to cart',
///   outlinedButtonText: 'Buy now',
///   onTap: (){
///     // on tap event
///   },
///   onFilledButtonPressed: (){
///     // on filled pressed
///   },
///   onOutlinedButtonPressed: (){
///     // on outlined pressed
///   },
/// )
/// ```
class FakeHorizontalProductCard extends StatelessWidget {
  const FakeHorizontalProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
    required this.filledButtonText,
    required this.outlinedButtonText,
    required this.onTap,
    required this.onFilledButtonPressed,
    required this.onOutlinedButtonPressed,
  });

  /// The URL of the product image.
  final String imageUrl;

  /// The title of the product.
  final String title;

  /// The description of the product.
  final String description;

  /// The price of the product.
  final double price;

  /// The text to display on the filled button.
  final String filledButtonText;

  /// The text to display on the outlined button.
  final String outlinedButtonText;

  /// Callback function when the card is tapped.
  final VoidCallback onTap;

  /// Callback function when the filled button is pressed.
  final VoidCallback onFilledButtonPressed;

  /// Callback function when the outlined button is pressed.
  final VoidCallback onOutlinedButtonPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: SizedBox(
        height: 165.0,
        child: Card(
          elevation: 16.0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: FakeSpacing.sl,
              vertical: FakeSpacing.sm,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: FakeImageNetwork(
                    url: imageUrl,
                    width: 100.0,
                    fit: BoxFit.contain,
                  ),
                ),
                const FakeSpacerM(axis: FakeSpacerAxis.x),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FakeTextLarge(
                        title,
                        weight: FontWeight.w500,
                        maxLines: 2,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                      const FakeSpacerXXS(),
                      FakeTextSmall(
                        description,
                        maxLines: 2,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                      const FakeSpacerXS(),
                      FakeTextHeading6(
                        '\$${price.toStringAsFixed(2).replaceAll('.', ',')}',
                        maxLines: 1,
                        textOverflow: TextOverflow.ellipsis,
                        weight: FontWeight.w700,
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FakeButtonPrimary(
                            onPressed: onFilledButtonPressed,
                            label: filledButtonText,
                            size: FakeButtonSize.small,
                          ),
                          const FakeSpacerS(axis: FakeSpacerAxis.x),
                          Flexible(
                            child: FakeButtonOutlinedPrimary(
                              onPressed: onOutlinedButtonPressed,
                              label: outlinedButtonText,
                              size: FakeButtonSize.small,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
