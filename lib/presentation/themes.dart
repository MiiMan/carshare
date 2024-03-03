import 'package:flutter/material.dart';
import 'package:theme_extensions_annotation/theme_extension_annotation.dart';

part 'themes.g.dart';

@ThemeExtended()
class Themes with _$Themes {
  const factory Themes({
    @ThemeProperty()
    required Color background100,
    @ThemeProperty()
    required Color background80,
    @ThemeProperty()
    required Color background50,
    @ThemeProperty()
    required Color accent100,
    @ThemeProperty()
    required Color accent70,
    @ThemeProperty()
    required Color accent30,
    @ThemeProperty()
    required Color semiaccent100,
    @ThemeProperty()
    required Color semiaccent80,
    @ThemeProperty()
    required Color foreground
  })= _Themes;
}