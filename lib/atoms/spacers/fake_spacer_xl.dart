part of 'fake_spacer.dart';

/// A spacer widget with a extra large size spacing. This widget is useful for adding
/// empty space between elements in a layout. It wraps a [FakeSpacer] widget
/// and sets its size to large (xl).
///
/// Example:
/// ```dart
/// FakeSpacerXL(
///   axis: FakeSpacerAxis.x,
/// )
/// ```
class FakeSpacerXL extends StatelessWidget {
  /// Creates a fake spacer widget with a extra large size spacing.
  ///
  /// The [axis] parameter determines whether the spacer should be x (horizontal) or y (vertical).
  const FakeSpacerXL({super.key, this.axis});

  /// The axis along which the spacer should expand.
  final FakeSpacerAxis? axis;

  @override
  Widget build(BuildContext context) {
    return FakeSpacer(
      axis: axis,
      value: FakeSpacing.xl,
    );
  }
}
