import 'package:design_system/componentes/text/ds_text_style.dart';
import 'package:flutter/cupertino.dart';

class DsText extends StatelessWidget {
  const DsText(this.text, {super.key, this.style});
  final String text;
  final DsTextStyle ?style;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style?.getStyle() ?? DsTextStyle.text.getStyle());
  }
}