part of 'fake_image.dart';

/// A convenience widget for displaying images from the asset bundle.
///
/// Use this widget when you need to display images from your assets folder.
/// Simply provide the asset path and optionally specify width, height, and fit.
/// It internally uses `FakeImage` widget to render the image with the specified properties.
///
/// Example usage:
///
/// ```dart
/// FakeImageAsset(
///   path: 'assets/images/example.png',
///   width: 200,
///   height: 200,
///   fit: BoxFit.cover,
/// )
/// ```
class FakeImageAsset extends StatelessWidget {
  /// Creates a widget that displays an image from the asset bundle.
  ///
  /// The [path] parameter must not be null.
  const FakeImageAsset({
    super.key,
    required this.path,
    this.width,
    this.height,
    this.fit,
  });

  /// The key to use for the widget.
  ///
  /// If omitted, the default key will be used.
  final String path;

  /// The width of the image.
  ///
  /// If null, the image will take up the natural width of the asset.
  final double? width;

  /// The height of the image.
  ///
  /// If null, the image will take up the natural height of the asset.
  final double? height;

  /// How the image should be inscribed into the space allocated during layout.
  ///
  /// If null, the default behavior of [BoxFit.contain] will be used.
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return FakeImage(
      image: AssetImage(path),
      width: width,
      height: height,
      fit: fit,
    );
  }
}
