import 'package:dadev/widgets/designs/textui/titletext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dadev/const/ccolor.dart';
import 'package:dadev/const/cfont.dart';
import 'package:dadev/const/cvariableapp.dart';

class PrimaryButton extends StatelessWidget {

  final double buttonWidth, buttonHeight, elevation;
  final String buttonLabel;
  final GestureTapCallback onTap;
  final bool buttonEnable;
  final bool loadingEnable;

  const PrimaryButton({Key? key, this.buttonWidth = double.maxFinite, this.buttonHeight = 50.0, this.elevation = 0.0, required this.buttonLabel, required this.onTap, required this.buttonEnable, required this.loadingEnable}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final themeApp = Theme.of(context);

    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: MaterialButton(
        onPressed: buttonEnable && !loadingEnable ? onTap : (){},
        elevation: elevation,
        color: buttonEnable && !loadingEnable ? themeApp.primaryColor : themeApp.dividerColor,
        textColor: buttonEnable && !loadingEnable ? ColorPalete.lightWhiteTextColor : themeApp.disabledColor,
        splashColor: Colors.black12,
        highlightColor: Colors.black12,
        highlightElevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(VariableApps.tertiaryRoundedButtonSize)
        ),
        child: loadingEnable ? Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoActivityIndicator(
              radius: 9.0,
            ),
            SizedBox(width: VariableApps.sizeBox8),
            TitleText(
              textLabel: 'LOADING',
              fontFamily: FontType.sfProMedium,
              customColor: true,
              color: themeApp.disabledColor,
            )
          ],
        ) : Text(
          buttonLabel,
        ),
      ),
    );
  }

}