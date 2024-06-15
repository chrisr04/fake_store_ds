import 'package:flutter/material.dart';
import 'package:fake_store_ds/atoms/atoms.dart';
import 'package:fake_store_ds/tokens/tokens.dart';

/// A fake product card.
///
/// This widget is used to display a product with its image, title, description,
/// price, and two buttons: one filled and one outlined. It also provides callbacks
/// for when the card is tapped and when the buttons are pressed.
///
/// Example usage:
/// ```dart
/// FakeProductCard(
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
class FakeProductCard extends StatelessWidget {
  /// Creates a fake product card.
  ///
  /// The [imageUrl], [title], [description], [price], [filledButtonText],
  /// [outlinedButtonText], [onTap], [onFilledButtonPressed], and
  /// [onOutlinedButtonPressed] arguments must not be null.
  const FakeProductCard({
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
        width: 230.0,
        height: 320.0,
        child: Card(
          elevation: 16.0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: FakeImageNetwork(
                  url: imageUrl,
                  width: 230.0,
                  height: 150.0,
                  fit: BoxFit.contain,
                ),
              ),
              const FakeSpacerS(),
              SizedBox(
                height: 40.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: FakeSpacing.sl,
                  ),
                  child: FakeTextLarge(
                    title,
                    maxLines: 2,
                    textOverflow: TextOverflow.ellipsis,
                    weight: FontWeight.w500,
                  ),
                ),
              ),
              const FakeSpacerXXS(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: FakeSpacing.sl,
                ),
                child: FakeTextSmall(
                  description,
                  maxLines: 2,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  textOverflow: TextOverflow.ellipsis,
                ),
              ),
              const FakeSpacerS(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: FakeSpacing.sl,
                ),
                child: FakeTextHeading6(
                  '\$${price.toStringAsFixed(1).replaceAll('.', ',')}',
                  weight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: FakeSpacing.sl,
                ).copyWith(
                  bottom: FakeSpacing.sm,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FakeButtonPrimary(
                      onPressed: onFilledButtonPressed,
                      label: filledButtonText,
                      size: FakeButtonSize.small,
                    ),
                    Flexible(
                      child: FakeButtonOutlinedPrimary(
                        onPressed: onOutlinedButtonPressed,
                        label: outlinedButtonText,
                        size: FakeButtonSize.small,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
