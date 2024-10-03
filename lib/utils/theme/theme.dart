import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';

enum AccentColors {
  piccolo,
  hit,
  beerus,
  goku,
  gohan,
  bulma,
  trunks,
  goten,
  popo,
  jiren,
  heles,
  zeno,
  krillin,
  chichi,
  roshi,
  dodoria,
  cell,
  raditz,
  whis,
  frieza,
  nappa,
}

class ThemeUtils {
  static const settingToAccentColor = <String, AccentColors>{
    'piccolo': AccentColors.piccolo,
    'hit': AccentColors.hit,
    'beerus': AccentColors.beerus,
    'goku': AccentColors.goku,
    'gohan': AccentColors.gohan,
    'bulma': AccentColors.bulma,
    'trunks': AccentColors.trunks,
    'goten': AccentColors.goten,
    'popo': AccentColors.popo,
    'jiren': AccentColors.jiren,
    'heles': AccentColors.heles,
    'zeno': AccentColors.zeno,
    'krillin': AccentColors.krillin,
    'chichi': AccentColors.chichi,
    'roshi': AccentColors.roshi,
    'dodoria': AccentColors.dodoria,
    'cell': AccentColors.cell,
    'raditz': AccentColors.raditz,
    'whis': AccentColors.whis,
    'frieza': AccentColors.frieza,
    'nappa': AccentColors.nappa,
  };
  static final accentToMoonColorBright = <AccentColors, Color>{
    AccentColors.piccolo: MoonColors.light.piccolo,
    AccentColors.hit: MoonColors.light.hit,
    AccentColors.beerus: MoonColors.light.beerus,
    AccentColors.goku: MoonColors.light.goku,
    AccentColors.gohan: MoonColors.light.gohan,
    AccentColors.bulma: MoonColors.light.bulma,
    AccentColors.trunks: MoonColors.light.trunks,
    AccentColors.goten: MoonColors.light.goten,
    AccentColors.popo: MoonColors.light.popo,
    AccentColors.jiren: MoonColors.light.jiren,
    AccentColors.heles: MoonColors.light.heles,
    AccentColors.zeno: MoonColors.light.zeno,
    AccentColors.krillin: MoonColors.dark.krillin,
    AccentColors.chichi: MoonColors.dark.chichi,
    AccentColors.roshi: MoonColors.dark.roshi,
    AccentColors.dodoria: MoonColors.dark.dodoria,
    AccentColors.cell: MoonColors.dark.cell,
    AccentColors.raditz: MoonColors.dark.raditz,
    AccentColors.whis: MoonColors.dark.whis,
    AccentColors.frieza: MoonColors.dark.frieza,
    AccentColors.nappa: MoonColors.dark.nappa,
  };
  static final accentToMoonColorDark = <AccentColors, Color>{
    AccentColors.piccolo: MoonColors.dark.piccolo,
    AccentColors.hit: MoonColors.dark.hit,
    AccentColors.beerus: MoonColors.dark.beerus,
    AccentColors.goku: MoonColors.dark.goku,
    AccentColors.gohan: MoonColors.dark.gohan,
    AccentColors.bulma: MoonColors.dark.bulma,
    AccentColors.trunks: MoonColors.dark.trunks,
    AccentColors.goten: MoonColors.dark.goten,
    AccentColors.popo: MoonColors.dark.popo,
    AccentColors.jiren: MoonColors.dark.jiren,
    AccentColors.heles: MoonColors.dark.heles,
    AccentColors.zeno: MoonColors.dark.zeno,
    AccentColors.krillin: MoonColors.dark.krillin,
    AccentColors.chichi: MoonColors.dark.chichi,
    AccentColors.roshi: MoonColors.dark.roshi,
    AccentColors.dodoria: MoonColors.dark.dodoria,
    AccentColors.cell: MoonColors.dark.cell,
    AccentColors.raditz: MoonColors.dark.raditz,
    AccentColors.whis: MoonColors.dark.whis,
    AccentColors.frieza: MoonColors.dark.frieza,
    AccentColors.nappa: MoonColors.dark.nappa,
  };
  static bool isDarkMode(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }

  static Color getBackgroundColor(BuildContext context) {
    return isDarkMode(context) ? MoonColors.dark.goku : MoonColors.light.goku;
  }
}
