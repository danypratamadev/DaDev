import 'package:dadev/const/cvariableapp.dart';
import 'package:flutter/material.dart';

class InkWellButton extends StatelessWidget {

  final Widget child;
  final GestureTapCallback onTap;

  const InkWellButton({Key? key, required this.child, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(VariableApps.tertiaryRoundedCardSize),
      child: InkWell(
        borderRadius: BorderRadius.circular(VariableApps.tertiaryRoundedCardSize),
        onTap: onTap,
        child: child,
      ),
    );
  }

}