import 'package:flutter/material.dart';
import 'package:dadev/const/cvariableapp.dart';

class SecondaryButton extends StatelessWidget {

  final double buttonWidth, buttonHeight, elevation;
  final String buttonLabel;
  final GestureTapCallback onTap;

  const SecondaryButton({Key? key, this.buttonWidth = double.maxFinite, this.buttonHeight = 56.0, this.elevation = 0.0, required this.buttonLabel, required this.onTap}) : super(key: key);

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
        splashColor: Colors.black12,
        highlightColor: Colors.black12,
        highlightElevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(VariableApps.tertiaryRoundedButtonSize),
          side: BorderSide(
            color: themeApp.primaryColor,
            width: 1.5
          )
        ),
      ),
    );
  }

}