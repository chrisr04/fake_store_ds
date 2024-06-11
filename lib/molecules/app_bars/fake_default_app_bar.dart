import 'package:flutter/material.dart';
import 'package:fake_store_ds/atoms/atoms.dart';

/// A fake app bar default.
///
/// Example usage:
///
/// ```dart
/// FakeDefaultAppBar(
///   title: 'My Fake AppBar',
/// )
/// ```
///
/// This creates a fake app bar with the specified title text.
class FakeDefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FakeDefaultAppBar({super.key, required this.title});

  /// The title text to be displayed in the fake app bar.
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: FakeTextHeading6(title),
    );
  }
}
