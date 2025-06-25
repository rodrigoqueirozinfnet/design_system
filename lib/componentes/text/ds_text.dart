import 'package:design_system/componentes/text/ds_text_style.dart';
import 'package:flutter/cupertino.dart';

class DsText extends StatelessWidget {
  const DsText(this.text, {super.key, this.style, this.overflow, this.maxLines});
  final String text;
  final TextOverflow? overflow;
  final int? maxLines;
  final DsTextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style?.getStyle() ?? DsTextStyle.text.getStyle(), maxLines: maxLines, overflow: overflow,);
  }
}