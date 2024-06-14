import 'package:flutter/material.dart';
import 'package:fake_store_ds/themes/themes.dart';

/// A fake bottom navigation bar.
///
/// This widget wraps a [NavigationBar] widget inside a [DecoratedBox] to
/// provide a background and shadow effect similar to a real bottom navigation
/// bar. The appearance of the navigation bar is determined by the provided
/// list of [NavigationDestination]s and the selected index.
///
/// Example:
///
/// ```dart
/// FakeBottomNavigationBar(
///   destinations: [
///     NavigationDestination(
///       icon: Icon(Icons.home),
///       label: 'Home',
///     ),
///     NavigationDestination(
///       icon: Icon(Icons.search),
///       label: 'Search',
///     ),
///     NavigationDestination(
///       icon: Icon(Icons.notifications),
///       label: 'Notifications',
///     ),
///   ],
///   selectedIndex: _selectedIndex,
///   onDestinationChanged: (index) {
///     setState(() {
///       _selectedIndex = index;
///     });
///   },
/// )
/// ```
class FakeBottomNavigationBar extends StatelessWidget {
  /// Creates a fake bottom navigation bar.
  ///
  /// The [destinations] parameter must not be null and must contain at least
  /// one element. The [onDestinationChanged] parameter must not be null. The
  /// [selectedIndex] parameter must be a valid index in the [destinations]
  /// list.
  const FakeBottomNavigationBar({
    super.key,
    required this.destinations,
    required this.onDestinationChanged,
    required this.selectedIndex,
  });

  /// The list of navigation destinations to display in the navigation bar.
  ///
  /// Each destination represents an item in the navigation bar with an icon
  /// and a label.
  final List<NavigationDestination> destinations;

  /// Called when a destination is selected by the user.
  ///
  /// The provided callback will be called with the index of the selected
  /// destination.
  final ValueChanged<int> onDestinationChanged;

  /// The index of the currently selected destination.
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(18.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadowVariant,
            offset: const Offset(0.0, -1.0),
            blurRadius: 12.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: NavigationBar(
        selectedIndex: selectedIndex,
        backgroundColor: Colors.transparent,
        destinations: destinations,
        onDestinationSelected: onDestinationChanged,
      ),
    );
  }
}
