part of 'fake_text_field.dart';

/// A fake text field widget that obscures the entered text.
///
/// This widget is useful for creating obscured text fields for UI purposes.
///
///Example usage:
/// ```dart
/// FakeTextFieldObscure(
///   controller: TextEditingController(),
///   onChanged: (value){
///     // Add you onChanged logic here
///   }
/// )
/// ```
class FakeTextFieldObscure extends StatelessWidget {
  /// Creates a fake text field widget that obscures the entered text.
  ///
  /// The [controller], [hintText], [focusNode], [onChanged], and [validator]
  /// parameters must not be null.
  const FakeTextFieldObscure({
    super.key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.focusNode,
    this.validator,
    this.autovalidateMode,
  });

  /// The controller that controls the text being edited.
  final TextEditingController? controller;

  /// The text to display as a hint in the text field when it is empty.
  final String? hintText;

  /// The node in the focus tree that is currently focused on this widget.
  final FocusNode? focusNode;

  /// Called when the user changes the text in the text field.
  final ValueChanged<String>? onChanged;

  /// Called during validation to determine if the input is valid.
  final String? Function(String?)? validator;

  /// Used to configure the auto validation of [FormField] and [Form] widgets.
  final AutovalidateMode? autovalidateMode;

  @override
  Widget build(BuildContext context) {
    return FakeTextField(
      controller: controller,
      focusNode: focusNode,
      textAlignVertical: TextAlignVertical.center,
      autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
      hintText: hintText,
      onChanged: onChanged,
      validator: validator,
      obscureText: true,
    );
  }
}
