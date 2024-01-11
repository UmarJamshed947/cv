import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

class Poppins extends StatelessWidget {
  final String text;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? textOverflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticslabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  final Color? color;
  final Color? backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final double? wordSpacing;
  final TextBaseline? textBaseline;
  final double? height;
  final Locale? styleLocale;
  final Paint? foreground;
  final Paint? background;
  final List<Shadow>? shadows;
  final List<FontFeature>? fontFeatures;
  final List<FontVariation>? fontVariations;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final double? decorationThickness;
  final String? debugLabel;
  final String? fontFamily;
  final List<String>? fontFamilyFallback;
  final String? package;
  final TextOverflow? styleOverflow;
  final TextStyle? textStyle;

  Poppins(
      {super.key,
      required this.text,
      this.strutStyle,
      this.textAlign,
      this.textDirection,
      this.locale,
      this.softWrap,
      this.textOverflow,
      this.textScaleFactor,
      this.maxLines,
      this.semanticslabel,
      this.textWidthBasis,
      this.textHeightBehavior,
      this.selectionColor,
      this.color,
      this.backgroundColor,
      this.fontSize,
      this.fontWeight,
      this.fontStyle,
      this.letterSpacing,
      this.wordSpacing,
      this.textBaseline,
      this.height,
      this.styleLocale,
      this.foreground,
      this.background,
      this.fontFeatures,
      this.decoration,
      this.decorationColor,
      this.decorationThickness,
      this.debugLabel,
      this.fontFamily,
      this.fontFamilyFallback,
      this.package,
      this.styleOverflow,
      this.textStyle,
      this.shadows,
      this.fontVariations});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: textOverflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticslabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      style: GoogleFonts.poppins(
        color: color,
        backgroundColor: backgroundColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        height: height,
        foreground: foreground,
        background: background,
        fontFeatures: fontFeatures,
        decoration: decoration,
        decorationThickness: decorationThickness,
        decorationColor: decorationColor,
        textStyle: textStyle,
        shadows: shadows,
      ),
    );
  }
}
