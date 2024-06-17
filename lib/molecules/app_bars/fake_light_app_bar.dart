import 'package:flutter/material.dart';
import 'package:fake_store_ds/atoms/atoms.dart';

/// A fake app bar light.
///
/// Example usage:
///
/// ```dart
/// FakeLightAppBar(
///   title: 'My Fake AppBar',
/// )
/// ```
///
/// This creates a fake app bar with the specified title text.
class FakeLightAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FakeLightAppBar({super.key, this.title});

  /// The title text to be displayed in the fake app bar.
  final String? title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Theme.of(context).colorScheme.onBackground,
      title: title != null
          ? FakeTextHeading6(
              title!,
              color: Theme.of(context).colorScheme.onBackground,
            )
          : null,
    );
  }
}
