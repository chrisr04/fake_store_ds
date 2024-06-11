import 'package:example/screens/pages/error/pages_error_screen.dart';
import 'package:example/screens/pages/pages_screen.dart';
import 'package:example/screens/templates/error/templates_error_screen.dart';
import 'package:example/screens/templates/templates_screen.dart';
import 'package:flutter/material.dart';
import 'package:example/screens/home/home_screen.dart';
import 'package:example/screens/atoms/atoms_screen.dart';
import 'package:example/screens/molecules/molecules_screen.dart';
import 'package:example/screens/atoms/texts/atoms_texts_screen.dart';
import 'package:example/screens/atoms/icons/atoms_icons_screens.dart';
import 'package:example/screens/atoms/images/atoms_images_screen.dart';
import 'package:example/screens/atoms/spacers/atoms_spacer_screen.dart';
import 'package:example/screens/atoms/buttons/atoms_buttons_screen.dart';
import 'package:example/screens/molecules/cards/molecules_cards_screen.dart';
import 'package:example/screens/atoms/text_fields/atoms_text_fields_screen.dart';
import 'package:example/screens/molecules/list_tiles/molecules_list_tiles_screen.dart';
import 'package:example/screens/molecules/app_bars/molecules_app_bars_screen.dart';
import 'package:example/screens/molecules/modals/molecules_modals_screen.dart';
import 'package:example/screens/organisms/organisms_screen.dart';
import 'package:example/screens/organisms/bottom_navigation_bars/organisms_bottom_navigation_bars_screen.dart';

class AppRoutes {
  AppRoutes._();
  static const home = '/';
  static const atoms = '/atoms';
  static const atomsTexts = '/atoms/texts';
  static const atomsSpacers = '/atoms/spacers';
  static const atomsImages = '/atoms/images';
  static const atomsIcons = '/atoms/icons';
  static const atomsButtons = '/atoms/buttons';
  static const atomsTextFields = '/atoms/text-fields';
  static const molecules = '/molecules';
  static const moleculesCards = '/molecules/cards';
  static const moleculesListTiles = '/molecules/list-tiles';
  static const moleculesAppBars = '/molecules/app-bars';
  static const moleculesModals = '/molecules/modals';
  static const organisms = '/organisms';
  static const organismsBottomNavigationBars =
      '/organisms/bottom-navigation-bars';
  static const templates = '/templates';
  static const templatesError = '/templates/error';
  static const pages = '/pages';
  static const pagesError = '/pages/error';
}

final routes = <String, WidgetBuilder>{
  AppRoutes.home: (context) => const HomeScreen(),
  AppRoutes.atoms: (context) => const AtomsScreen(),
  AppRoutes.atomsTexts: (context) => const AtomsTextsScreen(),
  AppRoutes.atomsSpacers: (context) => const AtomsSpacersScreen(),
  AppRoutes.atomsImages: (context) => const AtomsImagesScreen(),
  AppRoutes.atomsIcons: (context) => const AtomsIconsScreen(),
  AppRoutes.atomsButtons: (context) => const AtomsButtonsScreen(),
  AppRoutes.atomsTextFields: (context) => const AtomsTextFieldsScreen(),
  AppRoutes.molecules: (context) => const MoleculesScreen(),
  AppRoutes.moleculesCards: (context) => const MoleculesCardsScreen(),
  AppRoutes.moleculesListTiles: (context) => const MoleculesListTilesScreen(),
  AppRoutes.moleculesAppBars: (context) => const MoleculesAppBarsScreen(),
  AppRoutes.moleculesModals: (context) => const MoleculesModalsScreen(),
  AppRoutes.organisms: (context) => const OrganismsScreen(),
  AppRoutes.organismsBottomNavigationBars: (context) =>
      const OrganismsBottomNavigationBarsScreen(),
  AppRoutes.templates: (context) => const TemplatesScreen(),
  AppRoutes.templatesError: (context) => const TemplatesErrorScreen(),
  AppRoutes.pages: (context) => const PagesScreen(),
  AppRoutes.pagesError: (context) => const PagesErrorScreen(),
};
