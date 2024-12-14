import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285553933),
      surfaceTint: Color(4285553933),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294762886),
      onPrimaryContainer: Color(4280490752),
      secondary: Color(4284964416),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4293976763),
      onSecondaryContainer: Color(4280359684),
      tertiary: Color(4282738253),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4291226828),
      onTertiaryContainer: Color(4278264078),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965487),
      onSurface: Color(4280163091),
      onSurfaceVariant: Color(4283123257),
      outline: Color(4286412647),
      outlineVariant: Color(4291741364),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281610279),
      inversePrimary: Color(4292789613),
      primaryFixed: Color(4294762886),
      onPrimaryFixed: Color(4280490752),
      primaryFixedDim: Color(4292789613),
      onPrimaryFixedVariant: Color(4283778304),
      secondaryFixed: Color(4293976763),
      onSecondaryFixed: Color(4280359684),
      secondaryFixedDim: Color(4292069025),
      onSecondaryFixedVariant: Color(4283385386),
      tertiaryFixed: Color(4291226828),
      onTertiaryFixed: Color(4278264078),
      tertiaryFixedDim: Color(4289450161),
      onTertiaryFixedVariant: Color(4281159222),
      surfaceDim: Color(4292925900),
      surfaceBright: Color(4294965487),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294636517),
      surfaceContainer: Color(4294307295),
      surfaceContainerHigh: Color(4293912538),
      surfaceContainerHighest: Color(4293518036),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4283449600),
      surfaceTint: Color(4285553933),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4287132452),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283122215),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4286477396),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4280896050),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284120162),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965487),
      onSurface: Color(4280163091),
      onSurfaceVariant: Color(4282860341),
      outline: Color(4284768080),
      outlineVariant: Color(4286610027),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281610279),
      inversePrimary: Color(4292789613),
      primaryFixed: Color(4287132452),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4285356554),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4286477396),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4284832574),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284120162),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282540874),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292925900),
      surfaceBright: Color(4294965487),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294636517),
      surfaceContainer: Color(4294307295),
      surfaceContainerHigh: Color(4293912538),
      surfaceContainerHighest: Color(4293518036),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4280951040),
      surfaceTint: Color(4285553933),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283449600),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280885769),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283122215),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278593556),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4280896050),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965487),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280755224),
      outline: Color(4282860341),
      outlineVariant: Color(4282860341),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281610279),
      inversePrimary: Color(4294962094),
      primaryFixed: Color(4283449600),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281805824),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283122215),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4281609234),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4280896050),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4279382814),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292925900),
      surfaceBright: Color(4294965487),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294636517),
      surfaceContainer: Color(4294307295),
      surfaceContainerHigh: Color(4293912538),
      surfaceContainerHighest: Color(4293518036),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4292789613),
      surfaceTint: Color(4292789613),
      onPrimary: Color(4282068736),
      primaryContainer: Color(4283778304),
      onPrimaryContainer: Color(4294762886),
      secondary: Color(4292069025),
      onSecondary: Color(4281806870),
      secondaryContainer: Color(4283385386),
      onSecondaryContainer: Color(4293976763),
      tertiary: Color(4289450161),
      onTertiary: Color(4279645985),
      tertiaryContainer: Color(4281159222),
      onTertiaryContainer: Color(4291226828),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279636747),
      onSurface: Color(4293518036),
      onSurfaceVariant: Color(4291741364),
      outline: Color(4288123008),
      outlineVariant: Color(4283123257),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293518036),
      inversePrimary: Color(4285553933),
      primaryFixed: Color(4294762886),
      onPrimaryFixed: Color(4280490752),
      primaryFixedDim: Color(4292789613),
      onPrimaryFixedVariant: Color(4283778304),
      secondaryFixed: Color(4293976763),
      onSecondaryFixed: Color(4280359684),
      secondaryFixedDim: Color(4292069025),
      onSecondaryFixedVariant: Color(4283385386),
      tertiaryFixed: Color(4291226828),
      onTertiaryFixed: Color(4278264078),
      tertiaryFixedDim: Color(4289450161),
      onTertiaryFixedVariant: Color(4281159222),
      surfaceDim: Color(4279636747),
      surfaceBright: Color(4282136879),
      surfaceContainerLowest: Color(4279242247),
      surfaceContainerLow: Color(4280163091),
      surfaceContainer: Color(4280426263),
      surfaceContainerHigh: Color(4281149985),
      surfaceContainerHighest: Color(4281873451),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4293118321),
      surfaceTint: Color(4292789613),
      onPrimary: Color(4280030720),
      primaryContainer: Color(4289105726),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4292332197),
      onSecondary: Color(4280030722),
      secondaryContainer: Color(4288385134),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4289713333),
      onTertiary: Color(4278197002),
      tertiaryContainer: Color(4285962621),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279636747),
      onSurface: Color(4294966005),
      onSurfaceVariant: Color(4292004536),
      outline: Color(4289307282),
      outlineVariant: Color(4287202163),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293518036),
      inversePrimary: Color(4283844352),
      primaryFixed: Color(4294762886),
      onPrimaryFixed: Color(4279636224),
      primaryFixedDim: Color(4292789613),
      onPrimaryFixedVariant: Color(4282529024),
      secondaryFixed: Color(4293976763),
      onSecondaryFixed: Color(4279636224),
      secondaryFixedDim: Color(4292069025),
      onSecondaryFixedVariant: Color(4282201627),
      tertiaryFixed: Color(4291226828),
      onTertiaryFixed: Color(4278195463),
      tertiaryFixedDim: Color(4289450161),
      onTertiaryFixedVariant: Color(4280040743),
      surfaceDim: Color(4279636747),
      surfaceBright: Color(4282136879),
      surfaceContainerLowest: Color(4279242247),
      surfaceContainerLow: Color(4280163091),
      surfaceContainer: Color(4280426263),
      surfaceContainerHigh: Color(4281149985),
      surfaceContainerHighest: Color(4281873451),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294966005),
      surfaceTint: Color(4292789613),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4293118321),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966005),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4292332197),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293918703),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4289713333),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279636747),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294966005),
      outline: Color(4292004536),
      outlineVariant: Color(4292004536),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293518036),
      inversePrimary: Color(4281542912),
      primaryFixed: Color(4294960785),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4293118321),
      onPrimaryFixedVariant: Color(4280030720),
      secondaryFixed: Color(4294239936),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4292332197),
      onSecondaryFixedVariant: Color(4280030722),
      tertiaryFixed: Color(4291490000),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4289713333),
      onTertiaryFixedVariant: Color(4278197002),
      surfaceDim: Color(4279636747),
      surfaceBright: Color(4282136879),
      surfaceContainerLowest: Color(4279242247),
      surfaceContainerLow: Color(4280163091),
      surfaceContainer: Color(4280426263),
      surfaceContainerHigh: Color(4281149985),
      surfaceContainerHighest: Color(4281873451),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
      useMaterial3: true,
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      textTheme: textTheme.apply(
        bodyColor: colorScheme.onSurface,
        displayColor: colorScheme.onSurface,
      ),
      scaffoldBackgroundColor: colorScheme.surface,
      canvasColor: colorScheme.surface,
      cardTheme: CardTheme(
        color: colorScheme.inversePrimary,
      ),
      listTileTheme: ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        style: ListTileStyle.list,
        titleAlignment: ListTileTitleAlignment.center,
        shape: Border.all(),
        tileColor: colorScheme.primaryFixed,
        textColor: colorScheme.onPrimary,
        iconColor: colorScheme.onPrimary,
      ));

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
