import 'package:flutter/widgets.dart';

enum DsTextStyle {
  bigTitle,
  title,
  text,
  subText,
}

extension DsTextStyleExtension on DsTextStyle {
  TextStyle getStyle() {
    const baseStyle = TextStyle(fontFamily: "Ubuntu");

    return switch (this) {
      DsTextStyle.bigTitle =>
        baseStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w700),
      DsTextStyle.title =>
        baseStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
      DsTextStyle.text =>
        baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
      DsTextStyle.subText =>
        baseStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w300),
    };
  }
}
