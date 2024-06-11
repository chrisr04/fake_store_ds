part of 'fake_image.dart';

/// A widget for displaying images from a network source.
///
/// This widget is a convenience wrapper around [MyImage] that fetches images
/// from the network and displays them with optional width, height, and fit.
///
/// To display images from the network, provide the URL of the image via the
/// [url] parameter. Additional parameters such as [width], [height], and [fit]
/// can be used to control the size and fitting behavior of the displayed image.
///
/// Example usage:
/// ```dart
/// FakeImageNetwork(
///   url: 'https://example.com/image.jpg',
///   width: 200,
///   height: 200,
///   fit: BoxFit.cover,
/// )
/// ```
class FakeImageNetwork extends StatelessWidget {
  /// Creates a widget for displaying images from a network source.
  ///
  /// The [url] parameter is required to specify the URL of the image to be fetched
  /// from the network.
  ///
  /// Optional parameters:
  /// - [width] and [height] control the size of the displayed image. If either
  ///   is null, the image will be sized to fit its intrinsic dimensions.
  /// - [fit] specifies how the image should be inscribed into the space
  ///   allocated by the layout. If null, it defaults to [BoxFit.contain].
  const FakeImageNetwork({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit,
  });

  /// The URL of the image to be fetched from the network.
  final String url;

  /// The width of the image.
  final double? width;

  /// The height of the image.
  final double? height;

  /// How the image should be inscribed into the space allocated by the layout.
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return FakeImage(
      image: NetworkImage(url),
      width: width,
      height: height,
      fit: fit,
    );
  }
}
