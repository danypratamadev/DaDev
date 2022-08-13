import 'dart:async';

import 'package:dadev/const/ccolor.dart';
import 'package:dadev/const/cfont.dart';
import 'package:dadev/const/cvariableapp.dart';
import 'package:dadev/models/mproject.dart';
import 'package:dadev/providers/wprovider.dart';
import 'package:dadev/widgets/designs/buttonui/inkwellbutton.dart';
import 'package:dadev/widgets/designs/buttonui/primarybutton.dart';
import 'package:dadev/widgets/designs/cardui/roundedcard.dart';
import 'package:dadev/widgets/designs/textui/bodytext.dart';
import 'package:dadev/widgets/designs/textui/headline1text.dart';
import 'package:dadev/widgets/designs/textui/headline2text.dart';
import 'package:dadev/widgets/designs/textui/headline3text.dart';
import 'package:dadev/widgets/designs/textui/headline4text.dart';
import 'package:dadev/widgets/designs/textui/large1text.dart';
import 'package:dadev/widgets/designs/textui/large2text.dart';
import 'package:dadev/widgets/designs/textui/titletext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

class WebHomePage extends StatelessWidget {

  int limitReq = 0;

  WebHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final mainProvider = Provider.of<WebProvider>(context, listen: false);
    final mediaApp = MediaQuery.of(context);
    final themeApp = Theme.of(context);

    if(limitReq == 0){
      Timer(Duration(milliseconds: 300), (){
        mainProvider.setupProjects();
      });
      limitReq++;
    }

    return Scaffold(
      body: Consumer<WebProvider>(
        builder: (contextt, value, child){
          int index = -1;
          return Stack(
            children: [
              Positioned(
                left: 0.0,
                right: 0.0,
                top: 0.0,
                bottom: 0.0,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: mediaApp.size.height,
                        color: themeApp.primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: VariableApps.sizeBox50 + VariableApps.sizeBox32, vertical: VariableApps.sizeBox50),
                          child: Stack(
                            children: [
                              Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(VariableApps.sizeBox3),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorPalete.lightBackgroundColor,
                                      ),
                                      child: ClipOval(
                                        child: Image.asset(
                                          VariableApps.imgMe,
                                          width: mediaApp.size.width * 0.12,
                                          height: mediaApp.size.width * 0.12,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: VariableApps.sizeBox50),
                                    Large1Text(
                                      textLabel: 'Welcome to DaDev.',
                                      customColor: true,
                                      color: ColorPalete.lightWhiteTextColor,
                                    ),
                                    SizedBox(height: VariableApps.secondaryPaddingSize,),
                                    Headline3Text(
                                      textLabel: 'Hello... Thank you for visiting my website.',
                                      fontFamily: FontType.sfProReguler,
                                      customColor: true,
                                      color: ColorPalete.lightWhiteTextColor,
                                    ),
                                    SizedBox(height: VariableApps.sizeBox50 + VariableApps.sizeBox50 + VariableApps.sizeBox14,),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 0.0,
                                right: 0.0,
                                bottom: 0.0,
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(VariableApps.tertiaryRoundedCardSize),
                                      border: Border.all(
                                        width: VariableApps.secondaryDividerSize,
                                        color: Colors.white54,
                                      )
                                    ),
                                    child: IntrinsicHeight(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          InkWellButton(
                                            onTap: (){

                                            }, 
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: VariableApps.secondaryPaddingSize, vertical: VariableApps.tertiaryPaddingSize),
                                              child: Row(
                                                children: const [
                                                  Icon(
                                                    FeatherIcons.github,
                                                    color: Colors.white70,
                                                  ),
                                                  SizedBox(width: VariableApps.sizeBox5,),
                                                  TitleText(
                                                    textLabel: 'danypratamadev',
                                                    customColor: true,
                                                    color: Colors.white70,
                                                  )
                                                ],
                                              ),
                                            )
                                          ),
                                          VerticalDivider(
                                            width: 0.0,
                                            indent: VariableApps.sizeBox8,
                                            endIndent: VariableApps.sizeBox8,
                                            thickness: VariableApps.secondaryDividerSize,
                                            color: Colors.white54,
                                          ),
                                          InkWellButton(
                                            onTap: (){

                                            }, 
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: VariableApps.secondaryPaddingSize, vertical: VariableApps.tertiaryPaddingSize),
                                              child: Row(
                                                children: const [
                                                  Icon(
                                                    FeatherIcons.mail,
                                                    color: Colors.white70,
                                                  ),
                                                  SizedBox(width: VariableApps.sizeBox5,),
                                                  TitleText(
                                                    textLabel: 'danypratamadev@gmail.com',
                                                    customColor: true,
                                                    color: Colors.white70,
                                                  )
                                                ],
                                              ),
                                            )
                                          ),
                                          VerticalDivider(
                                            width: 0.0,
                                            indent: VariableApps.sizeBox8,
                                            endIndent: VariableApps.sizeBox8,
                                            thickness: VariableApps.secondaryDividerSize,
                                            color: Colors.white54,
                                          ),
                                          InkWellButton(
                                            onTap: (){

                                            }, 
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: VariableApps.secondaryPaddingSize, vertical: VariableApps.tertiaryPaddingSize),
                                              child: Row(
                                                children: const [
                                                  Icon(
                                                    FeatherIcons.instagram,
                                                    color: Colors.white70,
                                                  ),
                                                  SizedBox(width: VariableApps.sizeBox5,),
                                                  TitleText(
                                                    textLabel: '@dany.pratama.dev',
                                                    customColor: true,
                                                    color: Colors.white70,
                                                  )
                                                ],
                                              ),
                                            )
                                          ),
                                          VerticalDivider(
                                            width: 0.0,
                                            indent: VariableApps.sizeBox8,
                                            endIndent: VariableApps.sizeBox8,
                                            thickness: VariableApps.secondaryDividerSize,
                                            color: Colors.white54,
                                          ),
                                          InkWellButton(
                                            onTap: (){

                                            }, 
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: VariableApps.secondaryPaddingSize, vertical: VariableApps.tertiaryPaddingSize),
                                              child: Row(
                                                children: const [
                                                  Icon(
                                                    FeatherIcons.facebook,
                                                    color: Colors.white70,
                                                  ),
                                                  SizedBox(width: VariableApps.sizeBox5,),
                                                  TitleText(
                                                    textLabel: 'Dany Pratama',
                                                    customColor: true,
                                                    color: Colors.white70,
                                                  )
                                                ],
                                              ),
                                            )
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Material(
                        color: themeApp.backgroundColor,
                        child: IntrinsicHeight(
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: VariableApps.sizeBox50 + VariableApps.sizeBox32, vertical: VariableApps.sizeBox50),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Iconsax.command,
                                        size: VariableApps.sizeBox50,
                                      ),
                                      SizedBox(height: VariableApps.secondaryPaddingSize,),
                                      Large2Text(
                                        textLabel: 'Works'
                                      ),
                                      SizedBox(height: VariableApps.tertiaryPaddingSize,),
                                      Headline4Text(
                                        textLabel: '${value.listProjects.length} project',
                                        fontFamily: FontType.sfProSemibold,
                                        customColor: true,
                                        color: ColorPalete.lightPrimaryColor,
                                      ),
                                    ],
                                  ),
                                )
                              ),
                              VerticalDivider(
                                width: 0.0,
                                thickness: VariableApps.secondaryDividerSize,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: VariableApps.sizeBox50 + VariableApps.sizeBox32, vertical: VariableApps.sizeBox50),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Iconsax.chart_3,
                                        size: VariableApps.sizeBox50,
                                      ),
                                      SizedBox(height: VariableApps.secondaryPaddingSize,),
                                      Large2Text(
                                        textLabel: 'Ability'
                                      ),
                                      SizedBox(height: VariableApps.sizeBox50,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircularPercentIndicator(
                                            radius: VariableApps.sizeBox50 + VariableApps.sizeBox24,
                                            percent: 0.8,
                                            center: TitleText(textLabel: 'Java'),
                                            lineWidth: VariableApps.sizeBox24,
                                            backgroundWidth: VariableApps.sizeBox16,
                                            backgroundColor: themeApp.dividerColor,
                                            linearGradient: LinearGradient(
                                              colors: [
                                                Colors.orange.shade700,
                                                Colors.orange.shade400,
                                              ]
                                            ),
                                            rotateLinearGradient: true,
                                            animation: true,
                                            animationDuration: 1200,
                                            animateFromLastPercent: true,
                                            circularStrokeCap: CircularStrokeCap.round,
                                          ),
                                          CircularPercentIndicator(
                                            radius: VariableApps.sizeBox50 + VariableApps.sizeBox24,
                                            percent: 0.75,
                                            center: TitleText(textLabel: 'Kotlin'),
                                            lineWidth: VariableApps.sizeBox24,
                                            backgroundWidth: VariableApps.sizeBox16,
                                            backgroundColor: themeApp.dividerColor,
                                            linearGradient: LinearGradient(
                                              colors: [
                                                Colors.purple.shade700,
                                                Colors.purple.shade400,
                                              ]
                                            ),
                                            rotateLinearGradient: true,
                                            animation: true,
                                            animationDuration: 1200,
                                            animateFromLastPercent: true,
                                            circularStrokeCap: CircularStrokeCap.round,
                                          ),
                                          CircularPercentIndicator(
                                            radius: VariableApps.sizeBox50 + VariableApps.sizeBox24,
                                            percent: 0.85,
                                            center: TitleText(textLabel: 'Dart'),
                                            lineWidth: VariableApps.sizeBox24,
                                            backgroundWidth: VariableApps.sizeBox16,
                                            backgroundColor: themeApp.dividerColor,
                                            linearGradient: LinearGradient(
                                              colors: [
                                                Colors.blue.shade700,
                                                Colors.blue.shade400,
                                              ]
                                            ),
                                            rotateLinearGradient: true,
                                            animation: true,
                                            animationDuration: 1200,
                                            animateFromLastPercent: true,
                                            circularStrokeCap: CircularStrokeCap.round,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: VariableApps.sizeBox50 + VariableApps.sizeBox32, vertical: VariableApps.sizeBox50),
                        child: Column(
                          children: [
                            Icon(
                              Iconsax.code,
                              size: VariableApps.sizeBox50,
                            ),
                            SizedBox(height: VariableApps.secondaryPaddingSize,),
                            Large2Text(
                              textLabel: 'All Projects'
                            ),
                            SizedBox(height: VariableApps.tertiaryPaddingSize,),
                            Headline4Text(
                              textLabel: '${value.listProjects.length} project',
                              fontFamily: FontType.sfProSemibold,
                              customColor: true,
                              color: ColorPalete.lightPrimaryColor,
                            ),
                            SizedBox(height: VariableApps.sizeBox50,),
                            GridView.count(
                              crossAxisCount: 4,
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              crossAxisSpacing: VariableApps.sizeBox50,
                              mainAxisSpacing: VariableApps.sizeBox50,
                              physics: NeverScrollableScrollPhysics(),
                              children: value.listProjects.map((project) => Center(
                                child: RoundedCard(
                                  cardPadding: 0.0,
                                  showElevation: false,
                                  child: InkWellButton(
                                    onTap: (){

                                    },
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: VariableApps.primaryPaddingSize,
                                          top: VariableApps.primaryPaddingSize,
                                          child: Icon(
                                            Iconsax.folder,
                                            size: VariableApps.sizeBox50,
                                            color: project.color,
                                          ),
                                        ),
                                        Positioned(
                                          left: VariableApps.primaryPaddingSize,
                                          right: VariableApps.primaryPaddingSize,
                                          bottom: VariableApps.primaryPaddingSize,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Headline4Text(
                                                textLabel: project.title,
                                                fontFamily: FontType.sfProSemibold,
                                              ),
                                              SizedBox(height: VariableApps.sizeBox5,),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: VariableApps.sizeBox10,
                                                    height: VariableApps.sizeBox10,
                                                    child: Material(
                                                      color: project.color,
                                                      borderRadius: BorderRadius.circular(VariableApps.primaryRoundedCardSize),
                                                    ),
                                                  ),
                                                  SizedBox(width: VariableApps.sizeBox5,),
                                                  BodyText(
                                                    textLabel: project.language
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              )).toList(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }
      ),
    );
  }

}