import 'package:flutter/material.dart';
import 'package:fake_store_ds/atoms/atoms.dart';
import 'package:fake_store_ds/tokens/tokens.dart';
import 'package:flutter/services.dart';

/// A widget that displays a card representing an item in a shopping cart.
///
/// The card includes an image, title, price, and buttons for deleting the item,
/// adding to the quantity, and removing from the quantity. It also allows
/// for custom quantity validation and handling of quantity changes.
class FakeShoppingCartCard extends StatefulWidget {
  /// Creates a [FakeShoppingCartCard].
  ///
  /// All parameters marked with [required] must not be null.
  const FakeShoppingCartCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.deleteButtonText,
    this.onDeleteButtonPressed,
    this.onAddButtonPressed,
    this.onRemoveButtonPressed,
    this.quantityValue,
    this.onQuantityChanged,
  });

  /// The URL of the image to display.
  final String imageUrl;

  /// The title of the item.
  final String title;

  /// The price of the item.
  final double price;

  /// The text to display on the delete button.
  final String deleteButtonText;

  /// Callback when the delete button is pressed.
  final VoidCallback? onDeleteButtonPressed;

  /// Callback when the add button is pressed.
  final VoidCallback? onAddButtonPressed;

  /// Callback when the remove button is pressed.
  final VoidCallback? onRemoveButtonPressed;

  /// The initial value of the quantity.
  final String? quantityValue;

  /// Callback when the quantity changes.
  final ValueChanged<String>? onQuantityChanged;

  @override
  State<FakeShoppingCartCard> createState() => _FakeShoppingCartCardState();
}

class _FakeShoppingCartCardState extends State<FakeShoppingCartCard> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: widget.quantityValue.toString(),
    );
  }

  @override
  void didUpdateWidget(covariant FakeShoppingCartCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_controller.text != widget.quantityValue.toString()) {
      _controller.text = widget.quantityValue.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 138.0,
      child: Card(
        elevation: 16.0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: FakeSpacing.sl,
            vertical: FakeSpacing.sm,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: FakeImageNetwork(
                  url: widget.imageUrl,
                  width: 100.0,
                  fit: BoxFit.contain,
                ),
              ),
              const FakeSpacerM(axis: FakeSpacerAxis.x),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FakeTextLarge(
                      widget.title,
                      weight: FontWeight.w500,
                      maxLines: 2,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    const FakeSpacerXS(),
                    FakeTextHeading6(
                      '\$${widget.price.toStringAsFixed(2).replaceAll('.', ',')}',
                      maxLines: 1,
                      textOverflow: TextOverflow.ellipsis,
                      weight: FontWeight.w700,
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: widget.onDeleteButtonPressed,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FakeIcon(
                                Icons.delete_outline_rounded,
                                size: 20.0,
                                color: Theme.of(context).colorScheme.error,
                              ),
                              FakeTextMedium(
                                widget.deleteButtonText,
                                color: Theme.of(context).colorScheme.error,
                                weight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: widget.onRemoveButtonPressed,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(FakeSpacing.xs),
                              child: FakeIcon(
                                Icons.remove,
                                size: 20.0,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 48.0,
                          child: FakeTextField(
                            controller: _controller,
                            onChanged: widget.onQuantityChanged,
                            textAlign: TextAlign.center,
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            keyboardType: TextInputType.number,
                            focusedBorder: InputBorder.none,
                            textInputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: widget.onAddButtonPressed,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(FakeSpacing.xs),
                              child: FakeIcon(
                                Icons.add,
                                size: 20.0,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
