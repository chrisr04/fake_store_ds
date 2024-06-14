import 'package:flutter/material.dart';
import 'package:fake_store_ds/atoms/atoms.dart';
import 'package:fake_store_ds/tokens/tokens.dart';
import 'package:fake_store_ds/themes/themes.dart';

part 'fake_modal_success.dart';
part 'fake_modal_error.dart';
part 'fake_modal_warning.dart';
part 'fake_modal_decision.dart';
part 'fake_modal_loading.dart';

/// A fake modal widget designed provides the appearance and behavior of a modal dialog.
///
///
/// The [FakeModal] widget is designed to be customizable with various properties like
/// [canClose], [title], [description], [icon], [bottomWidget], and [onCloseIconTap].
/// - [canClose]: Determines whether the modal can be closed.
/// - [title]: The title displayed at the top of the modal.
/// - [description]: Additional text description displayed below the title.
/// - [icon]: An optional icon widget to be displayed before the title.
/// - [bottomWidget]: An optional widget displayed at the bottom of the modal.
///
/// Example:
/// ```dart
/// FakeModal(
///   canClose: true,
///   title: 'Welcome',
///   description: 'This is a fake modal for demonstration purposes.',
///   icon: Icon(Icons.info),
///   bottomWidget: ElevatedButton(
///     onPressed: () {
///       // Handle button press
///     },
///     child: Text('Continue'),
///   ),
///   onCloseIconTap: () {
///     // Handle close icon tap
///   },
/// )
/// ```
class FakeModal extends StatelessWidget {
  /// Creates a [FakeModal] widget.
  const FakeModal({
    super.key,
    required this.canClose,
    required this.title,
    this.description,
    this.icon,
    this.bottomWidget,
  });

  /// Determines whether the modal can be closed.
  final bool canClose;

  /// The title displayed at the top of the modal.
  final String title;

  /// Additional text description displayed below the title.
  final String? description;

  /// An optional icon widget to be displayed before the title.
  final Widget? icon;

  /// An optional widget displayed at the bottom of the modal.
  final Widget? bottomWidget;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: canClose,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        surfaceTintColor: Theme.of(context).colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.all(FakeSpacing.md),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (icon != null) ...[
                icon!,
                const FakeSpacerS(),
              ],
              FakeTextHeading6(
                title,
                textAlign: TextAlign.center,
              ),
              if (description != null) ...[
                const FakeSpacerS(),
                FakeTextMedium(
                  description!,
                  textAlign: TextAlign.center,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ],
              if (bottomWidget != null) ...[
                const FakeSpacerL(),
                bottomWidget!,
              ],
            ],
          ),
        ),
      ),
    );
  }
}
