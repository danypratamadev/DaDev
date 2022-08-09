import 'package:flutter/material.dart';
import 'package:dadev/const/cfont.dart';

class CaptionText extends StatelessWidget {

  final String textLabel;
  final TextAlign textAlign;
  final String fontFamily;
  final int maxLines;
  final TextOverflow textOverflow;
  final bool customColor;
  final Color? color;

  const CaptionText({Key? key, required this.textLabel, this.textAlign = TextAlign.start, this.fontFamily = FontType.sfProTextReguler, this.maxLines = 5, this.textOverflow = TextOverflow.ellipsis, this.customColor = false, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final themeApp = Theme.of(context);

    return Text(
      textLabel,
      style: themeApp.textTheme.caption?.copyWith(
        fontFamily: fontFamily,
        color: customColor ? color : null,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: textOverflow,
    );
  }

}