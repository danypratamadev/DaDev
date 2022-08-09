import 'package:flutter/material.dart';
import 'package:dadev/const/cvariableapp.dart';

class TertiaryButton extends StatelessWidget {

  final double buttonWidth, buttonHeight, elevation;
  final String buttonLabel;
  final GestureTapCallback onTap;
  final Color effectColor;

  const TertiaryButton({Key? key, this.buttonWidth = double.maxFinite, this.buttonHeight = 56.0, this.elevation = 0.0, required this.buttonLabel, required this.onTap, this.effectColor = Colors.black12}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final themeApp = Theme.of(context);

    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: MaterialButton(
        onPressed: onTap,
        elevation: elevation,
        child: Text(
          buttonLabel,
        ),
        textColor: themeApp.primaryColor,
        splashColor: effectColor,
        highlightColor: effectColor,
        highlightElevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(VariableApps.tertiaryRoundedButtonSize)
        ),
      ),
    );
  }

}