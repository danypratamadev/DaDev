import 'package:dadev/const/ccolor.dart';
import 'package:dadev/const/cfont.dart';
import 'package:dadev/const/cvariableapp.dart';
import 'package:dadev/pages/web/dadev/whome.dart';
import 'package:dadev/providers/mprovider.dart';
import 'package:dadev/providers/wprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MobileProvider>(
          create: (context) => MobileProvider(),
        ),
        ChangeNotifierProvider<WebProvider>(
          create: (context) => WebProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'DaDev',
        theme: ThemeData(
          fontFamily: FontType.sfProTextReguler,
          brightness: Brightness.light,
          scaffoldBackgroundColor: ColorPalete.lightScaffoldColor,
          backgroundColor: ColorPalete.lightBackgroundColor,
          dialogBackgroundColor: ColorPalete.lightScaffoldColor,
          primaryColor: ColorPalete.lightPrimaryColor,
          appBarTheme: AppBarTheme(
            elevation: 3.0,
            shadowColor: ColorPalete.lightSecondaryShadowColor,
            color: ColorPalete.lightScaffoldColor,
            iconTheme: IconThemeData(
              color: Colors.black87,
            ),
            titleTextStyle: TextStyle(
              fontFamily: FontType.sfProSemibold,
              color: ColorPalete.lightPrimaryTextColor,
              fontSize: 17.0,
              letterSpacing: 0.1,
            )
          ),
          tabBarTheme: TabBarTheme(
            labelColor: Colors.purple.shade900,
            unselectedLabelColor: ColorPalete.lightTertiaryTextColor,
            labelStyle: TextStyle(
              fontFamily: FontType.sfProSemibold,
              fontSize: 15.0,
            ),
            unselectedLabelStyle: TextStyle(
              fontFamily: FontType.sfProSemibold,
              fontSize: 15.0,
            ),
            indicator: MaterialIndicator(
              color: Colors.purple.shade900,
              horizontalPadding: VariableApps.secondaryPaddingSize,
              paintingStyle: PaintingStyle.fill,
            ),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: ColorPalete.lightBackgroundColor,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: ColorPalete.lightPrimaryColor,
            selectedLabelStyle: TextStyle(
              fontSize: 11.0
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 11.0
            ),
            elevation: 20.0,
          ),
          textTheme: TextTheme(
            headline1: TextStyle(
              color: ColorPalete.lightPrimaryTextColor,
              letterSpacing: 0.15,
              fontSize: 72.0
            ),
            headline2: TextStyle(
              color: ColorPalete.lightPrimaryTextColor,
              letterSpacing: 0.15,
              fontSize: 40.0
            ),
            headline3: TextStyle(
              color: ColorPalete.lightPrimaryTextColor,
              letterSpacing: 0.15,
              fontSize: 35.0
            ),
            headline4: TextStyle(
              color: ColorPalete.lightPrimaryTextColor,
              letterSpacing: 0.15,
              fontSize: 30.0
            ),
            headline5: TextStyle(
              color: ColorPalete.lightPrimaryTextColor,
              letterSpacing: 0.15,
            ),
            headline6: TextStyle(
              color: ColorPalete.lightPrimaryTextColor,
              letterSpacing: 0.15,
            ),
            subtitle1: TextStyle(
              color: ColorPalete.lightPrimaryTextColor,
              letterSpacing: 0.15,
              fontSize: 18.0,
            ),
            subtitle2: TextStyle(
              color: ColorPalete.lightPrimaryTextColor,
              letterSpacing: 0.15,
              fontSize: 15.0,
            ),
            bodyText2: TextStyle(
              letterSpacing: 0.15,
              color: ColorPalete.lightPrimaryTextColor,
              height: 1.45,
              fontSize: 13.0,
            ),
            caption: TextStyle(
              letterSpacing: 0.15,
              height: 1.45, 
              fontSize: 11.0        
            ),
            overline: TextStyle(
              letterSpacing: 0.15,
              color: ColorPalete.lightSecondaryTextColor,
              height: 1.3,  
              fontSize: 10.0          
            ),
            button: TextStyle(
              fontFamily: FontType.sfProSemibold,
              letterSpacing: 0.15,
              fontSize: 15.0,
              height: 1.45,            
            ),
          ),
          iconTheme: IconThemeData(
            color: ColorPalete.lightPrimaryIconColor,
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: WebHomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
