import 'package:fake_store_ds/tokens/tokens.dart';
import 'package:flutter/material.dart';
import 'package:fake_store_ds/atoms/atoms.dart';
import 'package:fake_store_ds/foundations/foundations.dart';

/// A card widget designed for displaying information.
///
///
/// Example usage:
/// ```dart
/// FakeInformationCard(
///   onTap: () {
///     // Handle tap event
///   },
///   title: 'Example Title',
///   titleSize: 18.0,
///   titleWeight: FontWeight.bold,
/// )
/// ```
class FakeInformationCard extends StatelessWidget {
  const FakeInformationCard({
    super.key,
    required this.onTap,
    required this.title,
    this.titleSize,
    this.titleWeight,
    this.description,
    this.descriptionSize,
    this.descriptionWeight,
  });

  /// Callback function invoked when the card is tapped.
  final VoidCallback onTap;

  /// The title of the card.
  final String title;

  /// The description of the card.
  final String? description;

  /// The font size of the title text.
  final double? titleSize;

  /// The font weight of the title text.
  final FontWeight? titleWeight;

  /// The font size of the description text.
  final double? descriptionSize;

  /// The font weight of the description text.
  final FontWeight? descriptionWeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: SizedBox(
        width: double.infinity,
        child: Card(
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 20.0,
          child: Padding(
            padding: const EdgeInsets.all(FakeSpacing.sl),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FakeText(
                        label: title,
                        fontSize:
                            titleSize ?? FakeTypographyFoundation.fontSizeLarge,
                        fontWeight: titleWeight ?? FontWeight.w700,
                      ),
                      if (description != null) ...[
                        const FakeSpacerM(),
                        FakeText(
                          label: description!,
                          fontSize: descriptionSize ??
                              FakeTypographyFoundation.fontSizeMedium,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          fontWeight: descriptionWeight,
                        ),
                      ],
                    ],
                  ),
                ),
                const FakeIcon(
                  Icons.chevron_right_outlined,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
