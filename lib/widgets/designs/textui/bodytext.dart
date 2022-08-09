import 'package:flutter/material.dart';
import 'package:dadev/const/cfont.dart';

class BodyText extends StatelessWidget {

  final String textLabel;
  final TextAlign textAlign;
  final String fontFamily;
  final int maxLines;
  final TextOverflow textOverflow;
  final bool customColor;
  final Color? color;
  final double heightSpaceing;

  const BodyText({Key? key, required this.textLabel, this.textAlign = TextAlign.start, this.fontFamily = FontType.sfProTextReguler, this.maxLines = 5, this.textOverflow = TextOverflow.ellipsis, this.customColor = false, this.color, this.heightSpaceing = 1.3}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final themeApp = Theme.of(context);

    return Text(
      textLabel,
      style: themeApp.textTheme.bodyText2?.copyWith(
        fontFamily: fontFamily,
        color: customColor ? color : null,
        height: heightSpaceing
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: textOverflow,
      softWrap: true,
    );
  }

}