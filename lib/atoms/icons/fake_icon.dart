import 'package:flutter/material.dart';

/// A custom icon widget that wraps the [Icon] widget, allowing customization of
/// the icon's size and color.
///
/// ## Example usage:
///
/// ```dart
/// FakeIcon(
///   Icons.star,
///   size: 24,
///   color: Colors.yellow
/// )
/// ```
///
/// See also:
///
///  * [Icon], a widget for displaying icons based on `IconData`.
class FakeIcon extends StatelessWidget {
  /// Creates a `FakeIcon` widget.
  ///
  /// The `icon` parameter must not be null.
  ///
  /// The `size` parameter specifies the size of the icon. If null, the default
  /// size is used.
  ///
  /// The `color` parameter specifies the color of the icon. If null, the
  /// default color is used.
  const FakeIcon(
    this.icon, {
    super.key,
    this.size,
    this.color,
  });

  /// The icon to be displayed by this widget.
  final IconData icon;

  /// The size of the icon.
  ///
  /// If null, the default size is used.
  final double? size;

  /// The color of the icon.
  ///
  /// If null, the default color is used.
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}
