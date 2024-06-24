import 'package:flutter/material.dart';
import 'package:fake_store_ds/atoms/atoms.dart';
import 'package:fake_store_ds/tokens/tokens.dart';
import 'package:flutter/semantics.dart';

/// An app bar designed for search functionality.
///
/// The [FakeSearchAppBar] does not include any navigation actions in the app bar,
/// such as leading icons or actions on the right side. It consists of a centered
/// search field powered by [FakeTextFieldSearch], allowing users to input text
/// and trigger callbacks on text changes, submissions, or taps.
///
/// **Parameters:**
/// - [showBackButton]: Determines whether to display a back button on the left side.
/// - [readOnly]: Indicates if the search field is read-only.
/// - [hintText]: The text displayed when the search field is empty, providing guidance or context to the user.
/// - [onChanged]: Callback function invoked when the text in the search field changes.
/// - [onSubmit]: Callback function triggered when the user submits the search query.
/// - [onTap]: Callback function called when the search field is tapped.
///
/// **Usage:**
/// ```dart
/// FakeSearchAppBar(
///   showBackButton: true,
///   hintText: 'Search...',
///   onChanged: (query) {
///     // Handle text changes
///   },
///   onSubmit: (query) {
///     // Handle search submission
///   },
///   onTap: () {
///     // Handle tap on the search field
///   },
/// )
/// ```
class FakeSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FakeSearchAppBar({
    super.key,
    this.showBackButton = false,
    required this.hintText,
    this.onChanged,
    this.onSubmit,
    this.readOnly = false,
    this.onTap,
    this.semanticLabel,
    this.excludeSemantics = false,
    this.semanticFocused,
    this.semanticsSortKey,
    this.semanticsBackSortKey,
  });

  final bool showBackButton;
  final bool readOnly;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmit;
  final VoidCallback? onTap;
  final String? semanticLabel;
  final bool excludeSemantics;
  final SemanticsSortKey? semanticsSortKey;
  final SemanticsSortKey? semanticsBackSortKey;
  final bool? semanticFocused;

  @override
  Size get preferredSize => const Size.fromHeight(72.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0.0,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
              left: showBackButton ? FakeSpacing.zero : FakeSpacing.md,
              right: FakeSpacing.md,
            ),
            child: Row(
              children: [
                if (showBackButton)
                  Semantics(
                    sortKey: semanticsBackSortKey,
                    child: const BackButton(),
                  ),
                Expanded(
                  child: Semantics(
                    label: semanticLabel,
                    sortKey: semanticsSortKey,
                    focused: semanticFocused,
                    excludeSemantics: excludeSemantics,
                    child: FakeTextFieldSearch(
                      readOnly: readOnly,
                      hintText: hintText,
                      onSubmit: onSubmit,
                      onChanged: onChanged,
                      onTap: onTap,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
