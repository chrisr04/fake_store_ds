part of 'fake_spacer.dart';

/// A spacer widget with a small size spacing. This widget is useful for adding
/// empty space between elements in a layout. It wraps a [FakeSpacer] widget
/// and sets its size to large (sm).
///
/// Example:
/// ```dart
/// FakeSpacerS(
///   axis: FakeSpacerAxis.x,
/// )
/// ```
class FakeSpacerS extends StatelessWidget {
  /// Creates a fake spacer widget with a small size spacing.
  ///
  /// The [axis] parameter determines whether the spacer should be x (horizontal) or y (vertical).
  const FakeSpacerS({super.key, this.axis});

  /// The axis along which the spacer should expand.
  final FakeSpacerAxis? axis;

  @override
  Widget build(BuildContext context) {
    return FakeSpacer(
      axis: axis,
      value: FakeSpacing.sm,
    );
  }
}
