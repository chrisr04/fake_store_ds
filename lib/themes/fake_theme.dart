import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fake_store_ds/foundations/foundations.dart';

/// Main the of the app
final fakeTheme = ThemeData(
  useMaterial3: true,
  package: 'fake_store_ds',
  primaryColor: FakeColorsFoundation.primaryColor,
  fontFamily: FakeTypographyFoundation.fontFamily,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: FakeColorsFoundation.primaryColor,
    onPrimary: FakeColorsFoundation.onPrimary,
    secondary: FakeColorsFoundation.secondaryColor,
    onSecondary: FakeColorsFoundation.onSecondary,
    tertiary: FakeColorsFoundation.tertiaryColor,
    onTertiary: FakeColorsFoundation.onTertiary,
    error: FakeColorsFoundation.errorColor,
    onError: FakeColorsFoundation.onErrorColor,
    background: FakeColorsFoundation.backgroundColor,
    onBackground: FakeColorsFoundation.onBackgroundColor,
    surface: FakeColorsFoundation.surfaceColor,
    onSurface: FakeColorsFoundation.onSurfaceColor,
    surfaceVariant: FakeColorsFoundation.surfaceVariantColor,
    onSurfaceVariant: FakeColorsFoundation.onSurfaceVariantColor,
    surfaceTint: FakeColorsFoundation.surfaceColor,
    shadow: FakeColorsFoundation.shadowColor,
    onPrimaryContainer: FakeColorsFoundation.subtitleTextColor,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: FakeColorsFoundation.inputColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8.0),
      ),
      borderSide: BorderSide(
        color: FakeColorsFoundation.inputBorderColor,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8.0),
      ),
      borderSide: BorderSide(
        color: FakeColorsFoundation.inputBorderColor,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8.0),
      ),
      borderSide: BorderSide(
        color: FakeColorsFoundation.primaryColor,
        width: 1.5,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8.0),
      ),
      borderSide: BorderSide(
        color: FakeColorsFoundation.errorColor,
      ),
    ),
  ),
  cardTheme: const CardTheme(
    shadowColor: FakeColorsFoundation.shadowColor,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: FakeTypographyFoundation.fontSizeH1,
      color: FakeColorsFoundation.textColor,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: FakeTypographyFoundation.fontSizeH2,
      color: FakeColorsFoundation.textColor,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: FakeTypographyFoundation.fontSizeH3,
      color: FakeColorsFoundation.textColor,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: FakeTypographyFoundation.fontSizeH4,
      color: FakeColorsFoundation.textColor,
    ),
    headlineSmall: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: FakeTypographyFoundation.fontSizeH5,
      color: FakeColorsFoundation.textColor,
    ),
    titleLarge: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: FakeTypographyFoundation.fontSizeH6,
      color: FakeColorsFoundation.textColor,
    ),
    bodyLarge: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: FakeTypographyFoundation.fontSizeLarge,
      color: FakeColorsFoundation.textColor,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: FakeTypographyFoundation.fontSizeMedium,
      color: FakeColorsFoundation.textColor,
    ),
    bodySmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: FakeTypographyFoundation.fontSizeSmall,
      color: FakeColorsFoundation.textColor,
    ),
  ),
  navigationBarTheme: NavigationBarThemeData(
    indicatorColor: FakeColorsFoundation.primaryColor,
    iconTheme: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return const IconThemeData(
          color: FakeColorsFoundation.onPrimary,
        );
      }
      return const IconThemeData(
        color: FakeColorsFoundation.textColor,
      );
    }),
    labelTextStyle: MaterialStateProperty.all(
      const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FakeTypographyFoundation.fontSizeMedium,
        color: FakeColorsFoundation.textColor,
      ),
    ),
  ),
  appBarTheme: const AppBarTheme(
    scrolledUnderElevation: 0.0,
    backgroundColor: FakeColorsFoundation.appBarBackgroundColor,
    foregroundColor: FakeColorsFoundation.appBarForegroundColor,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: FakeColorsFoundation.statusBarColor,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
);

extension ColorSchemeExtension on ColorScheme {
  Color get warning => FakeColorsFoundation.warningColor;
  Color get success => FakeColorsFoundation.successColor;
}