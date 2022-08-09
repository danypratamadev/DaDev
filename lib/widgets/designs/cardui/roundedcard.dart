import 'package:dadev/providers/wprovider.dart';
import 'package:flutter/material.dart';
import 'package:dadev/const/ccolor.dart';
import 'package:dadev/const/cvariableapp.dart';
import 'package:provider/provider.dart';

class RoundedCard extends StatelessWidget {

  final Widget child;
  final double cardPadding;
  final double cardRadius;
  final bool showElevation;
  final bool gradientEnable;
  final dynamic gradientColor;
  final bool customColor;
  final Color bgColor;

  const RoundedCard({Key? key, required this.child, required this.cardPadding, this.cardRadius = VariableApps.secondaryRoundedCardSize, required this.showElevation, this.gradientEnable = false, this.gradientColor, this.customColor = false, this.bgColor = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<WebProvider>(context, listen: false);
    final themeApp = Theme.of(context);
    return PhysicalModel(
      color: Colors.transparent,
      shadowColor: ColorPalete.lightPrimaryShadowColor.withAlpha(20),
      borderRadius: BorderRadius.circular(cardRadius),
      elevation: !mainProvider.showBorder && !mainProvider.darkMode ? 10.0 : 0.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(cardRadius),
        child: Container(
          padding: EdgeInsets.all(cardPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(cardRadius),
            color: customColor ? bgColor : themeApp.backgroundColor,
            gradient: gradientColor,
            border: Border.all(
              color: mainProvider.showBorder ? themeApp.dividerColor : Colors.transparent,
              width: VariableApps.secondaryDividerSize
            )
          ),
          child: child
        ),
      ),
    );
  }

}