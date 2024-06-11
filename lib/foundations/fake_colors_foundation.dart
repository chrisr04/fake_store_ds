import 'package:fake_store_ds/tokens/tokens.dart';

/// A utility class that provides color constants used throughout the application.
///
/// The `FakeColorsFoundation` class centralizes the color scheme for the app,
/// making it easier to maintain and update the colors used in the UI.
class FakeColorsFoundation {
  // Private constructor to prevent instantiation of this utility class.
  FakeColorsFoundation._();

  /// The primary color of the application.
  /// Typically used for the main branding and visual identity.
  static const primaryColor = FakeColors.purple;

  /// The secondary color of the application.
  /// Used for accents and highlights.
  static const secondaryColor = FakeColors.purpleDark;

  /// The tertiary color of the application.
  /// A lighter variant used for less prominent accents.
  static const tertiaryColor = FakeColors.purple20;

  /// The background color of the application.
  /// Used for the primary background surfaces.
  static const backgroundColor = FakeColors.white;

  /// The color used for content displayed on top of the background.
  static const onBackgroundColor = FakeColors.navy;

  /// The color of the surface elements in the application.
  /// Typically used for cards, sheets, and other elevated surfaces.
  static const surfaceColor = FakeColors.white;

  /// The color used for content displayed on top of surfaces.
  static const onSurfaceColor = FakeColors.navy;

  /// The color of surface variants, providing an alternative surface color.
  static const surfaceVariantColor = FakeColors.navy;

  /// The color used for content displayed on top of surface variants.
  static const onSurfaceVariantColor = FakeColors.white;

  /// The color used for text and icons displayed on primary colored surfaces.
  static const onPrimary = FakeColors.white;

  /// The color used for text and icons displayed on secondary colored surfaces.
  static const onSecondary = FakeColors.white;

  /// The color used for text and icons displayed on tertiary colored surfaces.
  static const onTertiary = FakeColors.navy;

  /// The default text color of the application.
  static const textColor = FakeColors.navy;

  /// A lighter variant of the text color.
  /// Used for less prominent text.
  static const textLightColor = FakeColors.white;

  /// The color used for error states and error text.
  static const errorColor = FakeColors.redDark;

  /// The color used for content displayed on error-colored surfaces.
  static const onErrorColor = FakeColors.redDark;

  /// The color of the status bar.
  static const statusBarColor = FakeColors.black10;

  /// The background color of the app bar.
  static const appBarBackgroundColor = FakeColors.navy;

  /// The foreground color of the app bar.
  /// Used for text and icons on the app bar.
  static const appBarForegroundColor = FakeColors.white;

  /// The color of shadows used in the application.
  static const shadowColor = FakeColors.black30;

  /// The color of the shadow used in the bottom navigation bar.
  static const bottomnNavigationShadow = FakeColors.black10;

  /// The color used for subtitle text.
  static const subtitleTextColor = FakeColors.grey60;

  /// The color of input fields.
  static const inputColor = FakeColors.white;

  /// The color of the borders around input fields.
  static const inputBorderColor = FakeColors.grey30;

  /// The color of the hint text in search input fields.
  static const inputSearchHintColor = FakeColors.greyLight;

  /// The color used for indicating success states.
  static const successColor = FakeColors.green;

  /// The color used for indicating warning states.
  static const warningColor = FakeColors.yellow;
}
