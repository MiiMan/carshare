// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'themes.dart';

// **************************************************************************
// ThemeExtensionGenerator
// **************************************************************************

final _ThemesPrivateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `Themes._()`. This constructor is only meant to be used by themeExtended and you are not supposed to need it nor use it.');

mixin _$Themes {
  Color get background100 => throw _ThemesPrivateConstructorUsedError;
  Color get background80 => throw _ThemesPrivateConstructorUsedError;
  Color get background50 => throw _ThemesPrivateConstructorUsedError;
  Color get accent100 => throw _ThemesPrivateConstructorUsedError;
  Color get accent70 => throw _ThemesPrivateConstructorUsedError;
  Color get accent30 => throw _ThemesPrivateConstructorUsedError;
  Color get semiaccent100 => throw _ThemesPrivateConstructorUsedError;
  Color get semiaccent80 => throw _ThemesPrivateConstructorUsedError;
  Color get foreground => throw _ThemesPrivateConstructorUsedError;

  Themes copyWith({
    Color? background100,
    Color? background80,
    Color? background50,
    Color? accent100,
    Color? accent70,
    Color? accent30,
    Color? semiaccent100,
    Color? semiaccent80,
    Color? foreground,
  }) =>
      throw _ThemesPrivateConstructorUsedError;

  Themes copyWithDecoration(ThemesDecoration? decoration) =>
      throw _ThemesPrivateConstructorUsedError;
}

class _Themes implements Themes {
  final Color background100;
  final Color background80;
  final Color background50;
  final Color accent100;
  final Color accent70;
  final Color accent30;
  final Color semiaccent100;
  final Color semiaccent80;
  final Color foreground;

  const _Themes({
    required this.background100,
    required this.background80,
    required this.background50,
    required this.accent100,
    required this.accent70,
    required this.accent30,
    required this.semiaccent100,
    required this.semiaccent80,
    required this.foreground,
  });

  _Themes copyWith({
    Color? background100,
    Color? background80,
    Color? background50,
    Color? accent100,
    Color? accent70,
    Color? accent30,
    Color? semiaccent100,
    Color? semiaccent80,
    Color? foreground,
  }) =>
      _Themes(
        background100: background100 ?? this.background100,
        background80: background80 ?? this.background80,
        background50: background50 ?? this.background50,
        accent100: accent100 ?? this.accent100,
        accent70: accent70 ?? this.accent70,
        accent30: accent30 ?? this.accent30,
        semiaccent100: semiaccent100 ?? this.semiaccent100,
        semiaccent80: semiaccent80 ?? this.semiaccent80,
        foreground: foreground ?? this.foreground,
      );

  _Themes copyWithDecoration(ThemesDecoration? decoration) => decoration != null
      ? _Themes(
          background100: decoration.background100 ?? this.background100,
          background80: decoration.background80 ?? this.background80,
          background50: decoration.background50 ?? this.background50,
          accent100: decoration.accent100 ?? this.accent100,
          accent70: decoration.accent70 ?? this.accent70,
          accent30: decoration.accent30 ?? this.accent30,
          semiaccent100: decoration.semiaccent100 ?? this.semiaccent100,
          semiaccent80: decoration.semiaccent80 ?? this.semiaccent80,
          foreground: decoration.foreground ?? this.foreground,
        )
      : this;

  static Themes? lerp(Themes? a, Themes? b, double t) {
    if (a == null && b == null) return null;
    if (a == null) return b;
    if (b == null) return a;
    return Themes(
      background100: Color.lerp(a.background100, b.background100, t)!,
      background80: Color.lerp(a.background80, b.background80, t)!,
      background50: Color.lerp(a.background50, b.background50, t)!,
      accent100: Color.lerp(a.accent100, b.accent100, t)!,
      accent70: Color.lerp(a.accent70, b.accent70, t)!,
      accent30: Color.lerp(a.accent30, b.accent30, t)!,
      semiaccent100: Color.lerp(a.semiaccent100, b.semiaccent100, t)!,
      semiaccent80: Color.lerp(a.semiaccent80, b.semiaccent80, t)!,
      foreground: Color.lerp(a.foreground, b.foreground, t)!,
    );
  }
}

class ThemesDecoration {
  final Color? background100;
  final Color? background80;
  final Color? background50;
  final Color? accent100;
  final Color? accent70;
  final Color? accent30;
  final Color? semiaccent100;
  final Color? semiaccent80;
  final Color? foreground;

  const ThemesDecoration({
    this.background100,
    this.background80,
    this.background50,
    this.accent100,
    this.accent70,
    this.accent30,
    this.semiaccent100,
    this.semiaccent80,
    this.foreground,
  });
}

extension ThemesThemeData on ThemeData {
  Themes get themesExtension => this.extension<ThemesExtension>()!.theme;
}

class ThemesExtension extends ThemeExtension<ThemesExtension> {
  final Themes theme;

  const ThemesExtension(this.theme);

  @override
  ThemesExtension copyWith({Themes? theme}) {
    return ThemesExtension(theme ?? this.theme);
  }

  @override
  ThemesExtension lerp(ThemesExtension? other, double t) {
    if (other == null) return this;
    return ThemesExtension(_Themes.lerp(theme, other.theme, t)!);
  }
}
