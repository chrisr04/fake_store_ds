import 'package:flutter/material.dart';
import 'package:fake_store_ds/tokens/tokens.dart';

/// A widget that stacks multiple circular avatars horizontally within a fixed height.
///
/// This widget is useful for displaying a stack of avatar images, typically used
/// in scenarios like user profiles, contact lists, or similar UI components.
///
/// The avatars are positioned horizontally with a spacing defined by the constant
/// [FakeSpacing.xxl] multiplied by the index of each image in the provided list.
///
/// The size of each avatar can be customized using [minRadius] and [maxRadius].
/// If not specified, they default to 35.0.
///
/// The overall height of the stack can be adjusted using the [height] parameter.
/// By default, it is set to 70.0.
///
/// Example:
/// ```dart
/// FakeAvatarStack(
///   images: [
///     AssetImage('assets/avatar1.jpg'),
///     NetworkImage('https://example.com/avatar2.png'),
///     AssetImage('assets/avatar3.jpg'),
///   ],
///   minRadius: 30.0,
///   maxRadius: 40.0,
///   height: 80.0,
/// )
/// ```
class FakeAvatarStack extends StatelessWidget {
  /// Constructs a [FakeAvatarStack] widget.
  ///
  /// The [images] parameter is required and should contain a list of [ImageProvider] objects
  /// representing the avatar images to be displayed.
  ///
  /// The optional parameters [minRadius], [maxRadius], and [height] allow customization
  /// of the avatar sizes and stack height.
  const FakeAvatarStack({
    super.key,
    required this.images,
    this.minRadius = 35.0,
    this.maxRadius = 35.0,
    this.height = 70.0,
  });

  /// A list of image providers representing the avatar images to be displayed.
  final List<ImageProvider> images;

  /// The minimum radius of each avatar. Defaults to 35.0.
  final double? minRadius;

  /// The maximum radius of each avatar. Defaults to 35.0.
  final double? maxRadius;

  /// The height of the avatar stack. Defaults to 70.0.
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: Stack(
        children: [
          for (int i = 0; i < images.length; i++)
            Positioned(
              left: FakeSpacing.xxl * i,
              top: 0,
              child: CircleAvatar(
                backgroundImage: images[i],
                minRadius: minRadius,
                maxRadius: maxRadius,
              ),
            ),
        ],
      ),
    );
  }
}
