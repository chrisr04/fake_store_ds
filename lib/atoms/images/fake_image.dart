import 'package:flutter/material.dart';

part 'fake_image_asset.dart';
part 'fake_image_network.dart';

/// A custom widget for displaying images with flexibility in size and fit.
///
/// Example:
///
/// ```dart
/// FakeImage(
///   image: AssetImage('assets/image.png'),
///   width: 200,
///   height: 200,
///   fit: BoxFit.cover,
/// )
/// ```
class FakeImage extends StatelessWidget {
  /// Creates a custom image widget.
  ///
  /// The [image] parameter is required and specifies the image to display.
  ///
  /// The [width] parameter, if provided, sets the width of the image.
  ///
  /// The [height] parameter, if provided, sets the height of the image.
  ///
  /// The [fit] parameter, if provided, specifies how the image should be fit
  /// into the available space.
  const FakeImage({
    super.key,
    required this.image,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
  });

  /// The image to display.
  final ImageProvider image;

  /// The width of the image. If null, the image will occupy its natural width.
  final double? width;

  /// The height of the image. If null, the image will occupy its natural height.
  final double? height;

  /// How the image should be inscribed into the layout.
  ///
  /// If null, the default behavior of [BoxFit.contain] will be used.
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: image,
      width: width,
      height: height,
      fit: fit,
    );
  }
}
