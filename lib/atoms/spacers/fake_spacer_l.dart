part of 'fake_spacer.dart';

/// A spacer widget with a large size spacing. This widget is useful for adding
/// empty space between elements in a layout. It wraps a [FakeSpacer] widget
/// and sets its size to large (lg).
///
/// Example:
/// ```dart
/// FakeSpacerL(
///   axis: FakeSpacerAxis.x,
/// )
/// ```
class FakeSpacerL extends StatelessWidget {
  /// Creates a fake spacer with a large size.
  ///
  /// The [axis] parameter determines whether the spacer should be x (horizontal) or y (vertical).
  const FakeSpacerL({super.key, this.axis});

  /// The axis along which the spacer should expand.
  final FakeSpacerAxis? axis;

  @override
  Widget build(BuildContext context) {
    return FakeSpacer(
      axis: axis,
      value: FakeSpacing.lg,
    );
  }
}
