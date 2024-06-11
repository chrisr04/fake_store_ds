import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'fake_text_field_search.dart';
part 'fake_text_field_obscure.dart';

/// A widget that creates a customizable text field.
///
/// Example usage:
///
/// ```dart
/// FakeTextField(
///   controller: TextEditingController(),
///   keyboardType: TextInputType.text,
/// )
/// ```
class FakeTextField extends StatelessWidget {
  /// Creates a fake text field.
  ///
  /// All parameters are optional and can be used to configure the appearance
  /// and behavior of the fake text field.
  const FakeTextField({
    super.key,
    this.controller,
    this.label,
    this.hintText,
    this.initialValue,
    this.keyboardType = TextInputType.text,
    this.textInputFormatters,
    this.autofocus = false,
    this.textCapitalization = TextCapitalization.none,
    this.focusNode,
    this.validator,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.contentPadding,
    this.onChanged,
    this.maxLines = 1,
    this.hintMaxLines = 1,
    this.onTap,
    this.readOnly = false,
    this.inputTextStyle,
    this.hintTextStyle,
    this.labelTextStyle,
    this.borderRadius,
    this.maxLength,
    this.minLines = 1,
    this.textAlign,
    this.showCounter = false,
    this.counterText,
    this.fillColor,
    this.filled,
    this.enabled = true,
    this.onFieldSubmitted,
    this.suffixIcon,
    this.prefixIcon,
    this.suffixIconConstraints,
    this.prefixIconConstraints,
    this.textAlignVertical,
    this.disabledBorder,
    this.errorBorder,
    this.errorStyle,
    this.enabledBorder,
    this.focusedBorder,
    this.alignLabelWithHint = false,
    this.focusedErrorBorder,
    this.titleStyle,
    this.counterStyle,
    this.obscureText = false,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.errorText,
    this.cursorColor,
    this.border,
    this.textInputAction,
    this.onEditingComplete,
    this.onSaved,
    this.obscuringCharacter = '●',
  });

  /// The controller for manipulating the text field's content.
  final TextEditingController? controller;

  /// The label displayed above the fake text field.
  final String? label;

  /// The hint text displayed within the fake text field when it is empty.
  final String? hintText;

  /// The initial value to display in the fake text field.
  final String? initialValue;

  /// The type of keyboard to display for text input.
  final TextInputType keyboardType;

  /// A list of formatters to modify the input text.
  final List<TextInputFormatter>? textInputFormatters;

  /// Whether the fake text field should autofocus when the widget is first displayed.
  final bool autofocus;

  /// The capitalization behavior of the fake text field.
  final TextCapitalization textCapitalization;

  /// The focus node that controls the focus behavior of the fake text field.
  final FocusNode? focusNode;

  /// A function that validates the input text.
  final FormFieldValidator<String>? validator;

  /// The mode for automatically validating the input text.
  final AutovalidateMode autovalidateMode;

  /// The padding around the fake text field's content.
  final EdgeInsets? contentPadding;

  /// A callback function that is invoked whenever the input text changes.
  final Function(String)? onChanged;

  /// The maximum number of lines for the fake text field.
  final int? maxLines;

  /// The maximum number of lines for the hint text.
  final int? hintMaxLines;

  /// A callback function that is invoked when the fake text field is tapped.
  final VoidCallback? onTap;

  /// Whether the fake text field is read-only.
  final bool readOnly;

  /// The text style for the input text.
  final TextStyle? inputTextStyle;

  /// The text style for the hint text.
  final TextStyle? hintTextStyle;

  /// The text style for the label text.
  final TextStyle? labelTextStyle;

  /// The border radius of the fake text field.
  final BorderRadius? borderRadius;

  /// The maximum length of the input text.
  final int? maxLength;

  /// The minimum number of lines for the fake text field.
  final int? minLines;

  /// The horizontal alignment of the text within the fake text field.
  final TextAlign? textAlign;

  /// Whether to display a counter that shows the current length of the input text.
  final bool? showCounter;

  /// The text to display in the counter.
  final String? counterText;

  /// The color to fill the fake text field with.
  final Color? fillColor;

  /// Whether to fill the fake text field with color.
  final bool? filled;

  /// Whether the fake text field is enabled.
  final bool enabled;

  /// A callback function that is invoked when the fake text field is submitted.
  final Function(String)? onFieldSubmitted;

  /// An icon to display at the end of the fake text field.
  final Widget? suffixIcon;

  /// An icon to display at the beginning of the fake text field.
  final Widget? prefixIcon;

  /// The constraints for the suffix icon.
  final BoxConstraints? suffixIconConstraints;

  /// The constraints for the prefix icon.
  final BoxConstraints? prefixIconConstraints;

  /// The vertical alignment of the text within the fake text field.
  final TextAlignVertical? textAlignVertical;

  /// The border to display when the fake text field is disabled.
  final InputBorder? disabledBorder;

  /// The text style for displaying errors.
  final TextStyle? errorStyle;

  /// The border to display when the fake text field has an error.
  final InputBorder? errorBorder;

  /// The border to display when the fake text field has focused error.
  final InputBorder? focusedErrorBorder;

  /// The color of the text cursor.
  final Color? cursorColor;

  /// The border to display when the fake text field is enabled.
  final InputBorder? enabledBorder;

  /// The border to display when the fake text field is focused.
  final InputBorder? border;

  /// The border to display when the fake text field is focused.
  final InputBorder? focusedBorder;

  /// Whether to align the label with the hint text.
  final bool? alignLabelWithHint;

  /// The text style for the title.
  final TextStyle? titleStyle;

  /// The text style for the counter.
  final TextStyle? counterStyle;

  /// Whether the text should be obscured (e.g., for passwords).
  final bool obscureText;

  /// The padding for the text field when the keyboard is displayed.
  final EdgeInsets scrollPadding;

  /// The text to display when the fake text field has an error.
  final String? errorText;

  /// The action to perform when the user submits the text field.
  final TextInputAction? textInputAction;

  /// A callback function that is invoked when editing is completed.
  final VoidCallback? onEditingComplete;

  /// A callback function that is invoked when the form is saved.
  final ValueChanged<String?>? onSaved;

  /// The character used to obscure text (e.g., for passwords).
  final String obscuringCharacter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: cursorColor,
      enableSuggestions: false,
      autocorrect: false,
      obscureText: obscureText,
      initialValue: initialValue,
      controller: controller,
      keyboardType: keyboardType,
      autofocus: autofocus,
      textCapitalization: textCapitalization,
      focusNode: focusNode,
      enabled: enabled,
      textAlignVertical: textAlignVertical,
      inputFormatters: textInputFormatters,
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      textInputAction: textInputAction,
      textAlign: textAlign ?? TextAlign.start,
      validator: validator,
      autovalidateMode: autovalidateMode,
      style: inputTextStyle,
      onChanged: onChanged,
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
      readOnly: readOnly,
      scrollPadding: scrollPadding,
      onEditingComplete: onEditingComplete,
      onSaved: onSaved,
      obscuringCharacter: obscuringCharacter,
      decoration: InputDecoration(
        errorText: errorText,
        errorMaxLines: 2,
        alignLabelWithHint: alignLabelWithHint,
        isDense: true,
        counterStyle: counterStyle,
        prefixIcon: prefixIcon,
        prefixIconConstraints: prefixIconConstraints,
        suffixIcon: suffixIcon,
        suffixIconConstraints: suffixIconConstraints,
        contentPadding: contentPadding,
        counterText: (showCounter ?? false) ? counterText : '',
        filled: filled ?? true,
        fillColor: fillColor,
        hintText: hintText,
        hintMaxLines: hintMaxLines,
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
          fontWeight: FontWeight.w400,
          height: 1.0,
        ).merge(hintTextStyle),
        border: border,
        focusedBorder: focusedBorder,
        enabledBorder: enabledBorder,
        disabledBorder: disabledBorder,
        errorBorder: errorBorder,
        focusedErrorBorder: focusedErrorBorder,
        errorStyle: errorStyle,
      ),
    );
  }
}
