import 'package:fake_store_ds/tokens/tokens.dart';
import 'package:flutter/material.dart';

part 'fake_spacer_s.dart';
part 'fake_spacer_xs.dart';
part 'fake_spacer_xxs.dart';
part 'fake_spacer_m.dart';
part 'fake_spacer_l.dart';
part 'fake_spacer_xl.dart';
part 'fake_spacer_xxl.dart';

/// A enum that represents the axis to apply the Spacing
enum FakeSpacerAxis {
  /// Horizontal axis
  x,

  /// Vertical axis
  y
}

/// A widget that creates empty space along a specified axis.
///
/// A `FakeSpacer` widget creates space either horizontally or vertically
/// depending on the specified [axis]. It is useful for creating gaps
/// between widgets in a layout without needing to use actual Spacer widgets.
///
/// Example:
///
/// ```dart
/// FakeSpacer(
///   axis: FakeSpacerAxis.y,
///   value: 20.0,
/// )
/// ```
class FakeSpacer extends StatelessWidget {
  /// Creates a `FakeSpacer` widget.
  ///
  /// The [axis] parameter determines whether the space should be horizontal (x-axis)
  /// or vertical (y-axis). If not specified, it defaults to vertical.
  ///
  /// The [value] parameter specifies the amount of space to be created.
  const FakeSpacer({
    super.key,
    this.axis = FakeSpacerAxis.y,
    required this.value,
  });

  /// The axis along which the space should be created.
  ///
  /// Defaults to [FakeSpacerAxis.y].
  final FakeSpacerAxis? axis;

  /// The amount of space to be created, in logical pixels.
  final double value;

  @override
  Widget build(BuildContext context) {
    return axis == FakeSpacerAxis.x
        ? SizedBox(width: value)
        : SizedBox(height: value);
  }
}
