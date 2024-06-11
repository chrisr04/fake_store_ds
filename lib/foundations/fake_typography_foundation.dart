import 'package:fake_store_ds/tokens/tokens.dart';

/// A class that defines typography constants used throughout the app.
///
/// The `FakeTypographyFoundation` class provides a set of static constants
/// representing font family and font sizes for different text styles. These
/// constants can be used to maintain consistency in text appearance across
/// the application.
class FakeTypographyFoundation {
  /// Private constructor to prevent instantiation of this class.
  FakeTypographyFoundation._();

  /// The font family used for the app's typography.
  ///
  /// This font family is used consistently across various text styles
  /// defined in this class.
  static const String fontFamily = FakeTypography.poppins;

  /// Font size for Heading 1 style text.
  ///
  /// Typically used for the largest headings.
  static const fontSizeH1 = FakeTypography.heading1;

  /// Font size for Heading 2 style text.
  ///
  /// Typically used for second largest headings.
  static const fontSizeH2 = FakeTypography.heading2;

  /// Font size for Heading 3 style text.
  ///
  /// Typically used for medium-sized headings.
  static const fontSizeH3 = FakeTypography.heading3;

  /// Font size for Heading 4 style text.
  ///
  /// Typically used for small-sized headings.
  static const fontSizeH4 = FakeTypography.heading4;

  /// Font size for Heading 5 style text.
  ///
  /// Typically used for very small-sized headings or subheadings.
  static const fontSizeH5 = FakeTypography.heading5;

  /// Font size for Heading 6 style text.
  ///
  /// Typically used for smallest-sized headings or secondary subheadings.
  static const fontSizeH6 = FakeTypography.heading6;

  /// Font size for large body text.
  ///
  /// Typically used for larger body text to provide emphasis.
  static const fontSizeLarge = FakeTypography.large;

  /// Font size for medium body text.
  ///
  /// Typically used for standard body text.
  static const fontSizeMedium = FakeTypography.medium;

  /// Font size for small body text.
  ///
  /// Typically used for smaller body text or captions.
  static const fontSizeSmall = FakeTypography.small;
}
