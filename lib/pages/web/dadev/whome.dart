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
                        height: mediaApp.size.height * 0.7,
                        color: themeApp.primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: VariableApps.sizeBox50 + VariableApps.sizeBox32, vertical: VariableApps.sizeBox50),
                          child: Center(
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
                                      width: mediaApp.size.width * 0.08,
                                      height: mediaApp.size.width * 0.08,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: VariableApps.sizeBox32,),
                                Large1Text(
                                  textLabel: 'Welcome to DaDev.',
                                  customColor: true,
                                  color: ColorPalete.lightWhiteTextColor,
                                ),
                                SizedBox(height: VariableApps.secondaryPaddingSize,),
                                Headline3Text(
                                  textLabel: 'Hello... thank you for visiting my website.',
                                  fontFamily: FontType.sfProReguler,
                                  customColor: true,
                                  color: ColorPalete.lightWhiteTextColor,
                                ),
                                SizedBox(height: VariableApps.sizeBox50,),
                                Container(
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
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: VariableApps.sizeBox50 + VariableApps.sizeBox32),
                        child: IntrinsicHeight(
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: VariableApps.sizeBox50),
                                  child: Column(
                                    children: [
                                      Large2Text(
                                        textLabel: 'My Activity'
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
                                  padding: const EdgeInsets.symmetric(vertical: VariableApps.sizeBox50),
                                  child: Column(
                                    children: [
                                      Large2Text(
                                        textLabel: 'My Ability'
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
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 0.0,
                        thickness: VariableApps.secondaryDividerSize,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: VariableApps.sizeBox50 + VariableApps.sizeBox32, vertical: VariableApps.sizeBox50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Large2Text(
                              textLabel: 'My Projects'
                            ),
                            SizedBox(height: VariableApps.tertiaryPaddingSize,),
                            Headline4Text(
                              textLabel: '${value.listProjects.length} project',
                              fontFamily: FontType.sfProSemibold,
                              customColor: true,
                              color: ColorPalete.lightPrimaryColor,
                            ),
                            SizedBox(height: VariableApps.primaryPaddingSize,),
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
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: VariableApps.sizeBox50 + VariableApps.sizeBox32, vertical: VariableApps.sizeBox50),
                                child: Column(
                                  children: [
                                    Icon(
                                      Iconsax.code,
                                      size: VariableApps.sizeBox50,
                                    ),
                                    SizedBox(height: VariableApps.primaryPaddingSize,),
                                    Large2Text(
                                      textLabel: 'Projects'
                                    ),
                                    SizedBox(height: VariableApps.tertiaryPaddingSize,),
                                    Headline4Text(
                                      textLabel: '${value.listProjects.length} project',
                                      fontFamily: FontType.sfProSemibold,
                                      customColor: true,
                                      color: ColorPalete.lightSecondaryTextColor,
                                    ),
                                    SizedBox(height: VariableApps.primaryPaddingSize,),
                                    RoundedCard(
                                      cardPadding: 0.0, 
                                      showElevation: false,
                                      child: Column(
                                        children: value.listProjects.map((project){
                                          index++;
                                          return Column(
                                            children: [
                                              Material(
                                                color: Colors.transparent,
                                                child: ListTile(
                                                  onTap: () {
                                                    
                                                  },
                                                  dense: true,
                                                  title: Headline4Text(
                                                    textLabel: project.title,
                                                    fontFamily: FontType.sfProSemibold,
                                                  ),
                                                  subtitle: Row(
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
                                                  trailing: Transform.translate(
                                                    offset: Offset(VariableApps.sizeBox8, 0),
                                                    child: Icon(
                                                      Icons.chevron_right_rounded,
                                                      color: ColorPalete.lightTertiaryTextColor,
                                                      size: 22.0,
                                                    ),
                                                  ), 
                                                ),
                                              ),
                                              if(index < value.listProjects.length - 1)
                                              Divider(
                                                height: 0.0,
                                                indent: VariableApps.secondaryPaddingSize,
                                                thickness: VariableApps.secondaryDividerSize,
                                              )
                                            ],
                                          );
                                        }).toList()
                                      )
                                    )
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
                                      Iconsax.command,
                                      size: VariableApps.sizeBox50,
                                    ),
                                    SizedBox(height: VariableApps.primaryPaddingSize,),
                                    Large2Text(
                                      textLabel: 'Works'
                                    ),
                                    SizedBox(height: VariableApps.tertiaryPaddingSize,),
                                    TitleText(
                                      textLabel: 'Developer',
                                      customColor: true,
                                      color: ColorPalete.lightSecondaryTextColor,
                                    )
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
                                      Iconsax.profile_circle,
                                      size: VariableApps.sizeBox50,
                                    ),
                                    SizedBox(height: VariableApps.primaryPaddingSize,),
                                    Large2Text(
                                      textLabel: 'About'
                                    ),
                                    SizedBox(height: VariableApps.tertiaryPaddingSize,),
                                    TitleText(
                                      textLabel: 'Find out about me here',
                                      customColor: true,
                                      color: ColorPalete.lightSecondaryTextColor,
                                    )
                                  ],
                                ),
                              )
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // Positioned(
              //   left: 0.0,
              //   right: 0.0,
              //   top: 0.0,
              //   child: Container(
              //     color: ColorPalete.lightBackgroundColor,
              //     child: IntrinsicHeight(
              //       child: Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: VariableApps.primaryPaddingSize, vertical: VariableApps.sizeBox10),
              //         child: Row(
              //           children: [
              //             Headline1Text(
              //               textLabel: 'DyDev',
              //             ),
              //             Expanded(
              //               child: Center(
              //                 child: Row(
              //                   mainAxisSize: MainAxisSize.min,
              //                   children: [
              //                     InkWellButton(
              //                       onTap: () {
                                      
              //                       },
              //                       child: Padding(
              //                         padding: const EdgeInsets.symmetric(horizontal: VariableApps.sizeBox18, vertical: VariableApps.sizeBox14),
              //                         child: Headline4Text(
              //                           fontFamily: FontType.sfProSemibold,
              //                           textLabel: 'Home',
              //                           customColor: true,
              //                           color: themeApp.primaryColor,
              //                         ),
              //                       ),
              //                     ),
              //                     SizedBox(
              //                       width: VariableApps.primaryPaddingSize,
              //                     ),
              //                     InkWellButton(
              //                       onTap: () {
                                      
              //                       },
              //                       child: Padding(
              //                         padding: const EdgeInsets.symmetric(horizontal: VariableApps.sizeBox18, vertical: VariableApps.sizeBox14),
              //                         child: Headline4Text(
              //                           fontFamily: FontType.sfProSemibold,
              //                           textLabel: 'Projects',
              //                         ),
              //                       ),
              //                     ),
              //                     SizedBox(
              //                       width: VariableApps.primaryPaddingSize,
              //                     ),
              //                     InkWellButton(
              //                       onTap: () {
                                      
              //                       },
              //                       child: Padding(
              //                         padding: const EdgeInsets.symmetric(horizontal: VariableApps.sizeBox18, vertical: VariableApps.sizeBox14),
              //                         child: Headline4Text(
              //                           fontFamily: FontType.sfProSemibold,
              //                           textLabel: 'Works',
              //                         ),
              //                       ),
              //                     ),
              //                     SizedBox(
              //                       width: VariableApps.primaryPaddingSize,
              //                     ),
              //                     InkWellButton(
              //                       onTap: () {
                                      
              //                       },
              //                       child: Padding(
              //                         padding: const EdgeInsets.symmetric(horizontal: VariableApps.sizeBox18, vertical: VariableApps.sizeBox14),
              //                         child: Headline4Text(
              //                           fontFamily: FontType.sfProSemibold,
              //                           textLabel: 'About',
              //                         ),
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ),
              //             PrimaryButton(
              //               buttonWidth: mediaApp.size.width * 0.08,
              //               buttonHeight: 40.0,
              //               buttonLabel: 'Follow Me', 
              //               onTap: (){

              //               }, 
              //               buttonEnable: true, 
              //               loadingEnable: false
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // )
            ],
          );
        }
      ),
    );
  }

}