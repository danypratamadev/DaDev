import 'package:flutter/material.dart';

class DefaultTextForm extends StatelessWidget {

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final bool readOnly;
  final TextInputType textInputType;
  final int maxLength;
  final EdgeInsets contentPadding;
  final bool suffixEnable;
  final Widget suffixIcon;
  final ValueChanged<String> onChange;
  final TextAlign textAlign;
  final dynamic maxLines;
  final FocusNode focusNode;

  const DefaultTextForm({Key? key, required this.controller, required this.hintText, required this.obscureText, required this.textInputType, required this.maxLength, required this.contentPadding, required this.suffixEnable, required this.suffixIcon, required this.onChange, required this.readOnly, this.textAlign = TextAlign.start, this.maxLines = 1, required this.focusNode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeApp = Theme.of(context);
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      onChanged: onChange,
      readOnly: readOnly,
      focusNode: focusNode,
      scrollPhysics: BouncingScrollPhysics(),
      cursorRadius: Radius.circular(5.0),
      cursorWidth: 1.5,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        hintText: hintText,
        border: InputBorder.none,
        counter: Offstage(),
        suffixIcon: suffixEnable ? ClipOval(child: suffixIcon) : null,
        isDense: true,
      ),
      textAlign: textAlign,
      style: themeApp.textTheme.subtitle2,
      keyboardType: textInputType,
      maxLength: maxLength,
      maxLines: maxLines,
    );
  }

}