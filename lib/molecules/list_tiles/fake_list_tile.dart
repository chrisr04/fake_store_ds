import 'package:fake_store_ds/atoms/atoms.dart';
import 'package:fake_store_ds/tokens/tokens.dart';
import 'package:flutter/material.dart';

/// This widget provides a customizable list tile with leading icon, title,
/// subtitle, and trailing icon. It is intended for use cases where a full
/// ListTile is not needed but a similar visual representation is desired.
///
/// Example usage:
/// ```dart
/// FakeListTile(
///   onTap: () {},
///   leadingIcon: Icons.navigation_outlined,
///   title: 'FakeBottomNavigationBars',
///   subtitle: 'Bottom Navigation Bars availables in Fake Store DS',
/// )
/// ```
class FakeListTile extends StatelessWidget {
  /// Creates a [FakeListTile].
  ///
  /// The [leadingIcon], [title], and [onTap] arguments must not be null.
  const FakeListTile({
    super.key,
    required this.leadingIcon,
    required this.title,
    this.subtitle,
    required this.onTap,
  });

  /// The icon to be displayed at the start of the tile.
  final IconData leadingIcon;

  /// The primary text content of the tile.
  final String title;

  /// The secondary text content of the tile, displayed below the title.
  final String? subtitle;

  /// The callback function to be invoked when the tile is tapped.
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).colorScheme;
    return ListTile(
      onTap: onTap,
      splashColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      iconColor: themeColors.onBackground,
      leading: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: themeColors.primary,
        ),
        child: Padding(
          padding: const EdgeInsets.all(FakeSpacing.sm),
          child: FakeIcon(
            leadingIcon,
            color: themeColors.onPrimary,
          ),
        ),
      ),
      title: FakeTextLarge(
        title,
        weight: FontWeight.w700,
      ),
      subtitle: subtitle != null
          ? FakeTextMedium(
              subtitle!,
              color: themeColors.onPrimaryContainer,
            )
          : null,
      trailing: const FakeIcon(Icons.chevron_right_rounded),
    );
  }
}
