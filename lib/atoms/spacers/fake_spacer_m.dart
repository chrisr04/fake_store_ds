part of 'fake_spacer.dart';

/// A spacer widget that provides medium size spacing. This widget is useful for adding
/// empty space between elements in a layout. It wraps a [FakeSpacer] widget
/// and sets its size to large (md).
///
/// Example:
/// ```dart
/// FakeSpacerM(
///   axis: FakeSpacerAxis.x,
/// )
/// ```
class FakeSpacerM extends StatelessWidget {
  /// Creates a fake spacer widget with a medium size spacing.
  ///
  /// The [axis] parameter determines whether the spacer should be x (horizontal) or y (vertical).
  const FakeSpacerM({super.key, this.axis});

  /// The axis along which the spacer should expand.
  final FakeSpacerAxis? axis;

  @override
  Widget build(BuildContext context) {
    return FakeSpacer(
      axis: axis,
      value: FakeSpacing.md,
    );
  }
}
