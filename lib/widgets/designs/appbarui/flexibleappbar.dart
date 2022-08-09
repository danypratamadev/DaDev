import 'package:dadev/widgets/designs/textui/headline1text.dart';
import 'package:flutter/material.dart';
import 'package:dadev/const/cvariableapp.dart';

class FlexibleAppBarBackground extends StatelessWidget {

  final double flexibleExpandHeight;
  final String title;
  final dynamic subtitleWidget;
  final bool showSubtitle;
  final bool showAction;
  final dynamic actionWidget;
  
  const FlexibleAppBarBackground({Key? key, required this.title, required this.flexibleExpandHeight, this.subtitleWidget, this.showSubtitle = false, this.showAction = false, this.actionWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: showSubtitle ? flexibleExpandHeight + 20.0 : flexibleExpandHeight,
      child: Stack(
        children: [
          Positioned(
            left: VariableApps.primaryPaddingSize,
            right: VariableApps.primaryPaddingSize,
            bottom: VariableApps.secondaryPaddingSize,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Headline1Text(
                        textLabel: title,
                        maxLines: 1,
                      ),
                      if(showSubtitle)
                      SizedBox(height: VariableApps.sizeBox3),
                      if(showSubtitle)
                      subtitleWidget
                    ],
                  ),
                ),
                if(showAction)
                SizedBox(width: VariableApps.secondaryPaddingSize,),
                if(showAction)
                actionWidget
              ],
            )
          ),
        ],
      ),
    );
  }

}