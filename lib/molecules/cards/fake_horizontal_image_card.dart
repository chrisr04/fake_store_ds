import 'package:fake_store_ds/tokens/tokens.dart';
import 'package:flutter/material.dart';
import 'package:fake_store_ds/atoms/atoms.dart';
import 'package:fake_store_ds/foundations/foundations.dart';

/// A enum type that represents the image source of the card
enum FakeHorizontalImageCardType {
  /// Show images from local assets
  assets,

  /// Show images from network
  network
}

/// A card widget designed for displaying horizontally aligned images with accompanying titles.
///
/// This widget presents a card layout commonly used for showcasing images alongside text titles,
/// with an optional onTap callback for interactivity. It supports both asset and network images,
/// determined by the [type] parameter. When using network images, ensure that the [image] parameter
/// contains the URL. For asset images, provide the path to the asset.
///
/// The dimensions of the image can be customized through [imageWidth] and [imageHeight] parameters.
/// Additionally, the size and weight of the title text can be adjusted via [titleSize] and [titleWeight],
/// respectively. If these parameters are not provided, default values are applied based on the
/// foundation typography.
///
/// Example usage:
/// ```dart
/// FakeHorizontalImageCard(
///   onTap: () {
///     // Handle tap event
///   },
///   type: FakeHorizontalImageCardType.assets,
///   image: 'assets/example.png',
///   title: 'Example Title',
///   imageWidth: 70.0,
///   titleSize: 18.0,
///   titleWeight: FontWeight.bold,
/// )
/// ```
class FakeHorizontalImageCard extends StatelessWidget {
  const FakeHorizontalImageCard({
    super.key,
    this.type = FakeHorizontalImageCardType.assets,
    required this.onTap,
    required this.image,
    required this.title,
    this.imageWidth = 70.0,
    this.imageHeight,
    this.titleSize,
    this.titleWeight,
  });

  /// Callback function invoked when the card is tapped.
  final VoidCallback onTap;

  /// Determines the type of image to be displayed, either asset or network.
  final FakeHorizontalImageCardType type;

  /// The image to be displayed. For network images, provide the URL. For asset images, provide the path.
  final String image;

  /// The title accompanying the image.
  final String title;

  /// The width of the image. Defaults to 70.0.
  final double? imageWidth;

  /// The height of the image.
  final double? imageHeight;

  /// The font size of the title text.
  final double? titleSize;

  /// The font weight of the title text.
  final FontWeight? titleWeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: SizedBox(
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 20.0,
          child: Padding(
            padding: const EdgeInsets.all(FakeSpacing.sl),
            child: Row(
              children: [
                if (type == FakeHorizontalImageCardType.network)
                  FakeImageNetwork(
                    url: image,
                    width: imageWidth,
                    height: imageHeight,
                  )
                else
                  FakeImageAsset(
                    path: image,
                    width: imageWidth,
                    height: imageHeight,
                  ),
                const FakeSpacerM(axis: FakeSpacerAxis.x),
                Expanded(
                  child: FakeText(
                    label: title,
                    fontSize:
                        titleSize ?? FakeTypographyFoundation.fontSizeLarge,
                    fontWeight: titleWeight,
                  ),
                ),
                const FakeIcon(
                  Icons.chevron_right_outlined,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
