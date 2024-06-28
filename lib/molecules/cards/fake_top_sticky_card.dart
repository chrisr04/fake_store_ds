import 'package:fake_store_ds/tokens/tokens.dart';
import 'package:flutter/material.dart';

/// A custom card widget that sticks to the top of its parent with a rounded bottom edge.
///
/// This widget is designed to be used as a sticky card at the top of a screen or a section.
/// It provides a consistent design pattern for such UI elements.
///
/// The background is determinated by surfaceVariant color
///
/// Example usage:
/// ```dart
/// FakeTopStickyCard(
///   child: Center(
///     child: FakeTextHeading6(
///       'My text',
///       color: Theme.of(context).colorScheme.onSurfaceVariant
///     )
///   )
/// )
/// ```
class FakeTopStickyCard extends StatelessWidget {
  /// Creates a [MyTopStickyCard].
  ///
  /// The [child] parameter must not be null.
  const FakeTopStickyCard({
    super.key,
    required this.child,
  });

  /// The widget that is displayed as the content of this card.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: themeColors.surfaceContainerHighest,
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(25.0),
        ),
        boxShadow: [
          BoxShadow(
            color: themeColors.shadow,
            offset: const Offset(0.0, 0.08),
            blurRadius: 16.0,
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(FakeSpacing.md),
          child: child,
        ),
      ),
    );
  }
}
