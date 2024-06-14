import 'package:flutter/material.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

/// A fake rating stars widget that displays a visual representation of a rating.
class FakeRatingStars extends StatelessWidget {
  /// Constructs a [FakeRatingStars] widget with the given [rating].
  const FakeRatingStars({super.key, required this.rating});

  /// The rating value to display.
  final double rating;

  @override
  Widget build(BuildContext context) {
    final (integer, decimal) = _divideRating;

    final hasHalfStar = decimal >= 0.5;

    return Row(
      children: List.generate(
        5,
        (index) {
          final isFilled = index < integer;
          final isHalf = hasHalfStar && index == integer;
          return FakeIcon(
            isFilled
                ? Icons.star_rate_rounded
                : isHalf
                    ? Icons.star_half_rounded
                    : Icons.star_border_rounded,
            size: 20.0,
            color: Theme.of(context).colorScheme.warning,
          );
        },
      ),
    );
  }

  (int, double) get _divideRating => (rating.toInt(), rating - rating.toInt());
}
