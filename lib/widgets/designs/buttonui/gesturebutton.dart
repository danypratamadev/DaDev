import 'package:flutter/material.dart';

class GestureButton extends StatelessWidget {

  final Widget child;
  final GestureTapCallback onTap;

  const GestureButton({Key? key, required this.child, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: child,
    );
  }

}