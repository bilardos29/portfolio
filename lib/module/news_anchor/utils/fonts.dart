import 'dart:ui';

class FontUtils {
  static TextStyle styles(
          {bool isBold = false,
          bool isRegular = false,
          bool isItalic = false,
          double size = 12}) =>
      TextStyle(
          fontWeight: isBold
              ? FontWeight.bold
              : isRegular
                  ? FontWeight.w300
                  : FontWeight.w400,
          fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
          fontSize: size);

  static TextStyle get h1Bold => styles(isBold: true, size: 15);

  static TextStyle get h1 => styles(size: 15);

  static TextStyle get h2Bold => styles(size: 14);

  static TextStyle get h2 => styles(size: 14);

  static TextStyle get h3Bold => styles(size: 13);

  static TextStyle get h3 => styles(size: 13);

  static TextStyle get p1 => styles(size: 15, isRegular: true);

  static TextStyle get articleTitleBold => styles(size: 18, isBold: true);

  static TextStyle get articleTitle => styles(size: 18, isRegular: true);

  static TextStyle get imageCaption =>
      styles(size: 12, isRegular: true, isItalic: true);
}
