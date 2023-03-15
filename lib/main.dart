import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/provider/ahadethprovider/ahadethprovider.dart';
import 'package:untitled1/provider/myprovider.dart';
import 'package:untitled1/provider/sebhaprovider/sebhaprovider.dart';
import 'package:untitled1/provider/suraprovider/suraprovider.dart';
import 'package:untitled1/suradetails/suradetails.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'hadethdetails/HadethDetails.dart';
import 'home/HomeScreen.dart';
import 'MyTheme.dart';

void main(){
runApp(MultiProvider(
  providers: [
    ChangeNotifierProvider(

    create:(context)=>MyProvider()),
    ChangeNotifierProvider(

        create:(context)=>SuraProvider()),

    ChangeNotifierProvider(

        create:(context)=>AhadethProvider()),
    ChangeNotifierProvider(

        create:(context)=>SebhaProvider()),
  ],
    child: islamiApp()));
}
class islamiApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(localizationsDelegates: [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
locale: Locale(provider.languageCode),
debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        HadethDetailss.routeName:(_)=>HadethDetailss(),
        SuraDetails.routeName:(_)=>SuraDetails(),


      },
      theme:MyThemeData.light  ,
      darkTheme: MyThemeData.Dark,
      themeMode:provider.mode,
    );
  }
}
