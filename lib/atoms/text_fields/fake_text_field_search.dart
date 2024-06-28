part of 'fake_text_field.dart';

/// A fake text field used for search functionality.
///
///Example usage:
/// ```dart
/// FakeTextFieldSearch(
///   onSubmit: (value){
///     // Add you onSubmit logic here
///   },
/// )
/// ```
class FakeTextFieldSearch extends StatefulWidget {
  /// Creates a fake text field for search functionality.
  ///
  /// The [controller] parameter is optional, allowing the use of an existing
  /// TextEditingController to control the text field.
  ///
  /// The [onChanged] callback is triggered whenever the text in the field changes.
  ///
  /// The [onSubmit] callback is triggered when the user submits the text field,
  /// typically by pressing the enter key on the keyboard.
  ///
  /// The [hintText] parameter provides a hint text to be displayed when the
  /// text field is empty.
  const FakeTextFieldSearch({
    super.key,
    this.controller,
    this.onChanged,
    this.onSubmit,
    this.hintText,
    this.readOnly = false,
    this.onTap,
  });

  /// The controller that manages the text field's text.
  ///
  /// If null, a new TextEditingController will be created automatically.
  final TextEditingController? controller;

  /// Callback triggered when the text in the field changes.
  final ValueChanged<String>? onChanged;

  /// Callback triggered when the user submits the text field.
  final ValueChanged<String>? onSubmit;

  /// The hint text to be displayed when the text field is empty.
  final String? hintText;

  /// Whether the fake text field is read-only.
  final bool readOnly;

  /// Callback triggered when the text field is tapped.
  final VoidCallback? onTap;

  @override
  State<FakeTextFieldSearch> createState() => _FakeTextFieldSearchState();
}

class _FakeTextFieldSearchState extends State<FakeTextFieldSearch> {
  late TextEditingController _controller;
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return FakeTextField(
      controller: _controller,
      focusNode: _focusNode,
      textAlignVertical: TextAlignVertical.center,
      hintText: widget.hintText,
      readOnly: widget.readOnly,
      onTap: widget.onTap,
      onChanged: widget.onChanged,
      enabledBorder: widget.readOnly
          ? const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            )
          : null,
      focusedBorder: widget.readOnly
          ? const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            )
          : null,
      suffixIcon: IconButton(
        onPressed: () => _onSubmit(_controller.text),
        icon: Icon(
          Icons.search,
          size: 24.0,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
      onFieldSubmitted: (value) => _onSubmit(value),
      textInputAction: TextInputAction.search,
    );
  }

  void _onSubmit(String value) {
    if (widget.onSubmit == null) return;
    _focusNode.unfocus();
    widget.onSubmit!(value);
  }
}
