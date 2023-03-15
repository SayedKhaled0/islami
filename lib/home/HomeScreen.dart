import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/home/quran/quran.dart';
import 'package:untitled1/radio/radio.dart';
import 'package:untitled1/home/sebha.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../MyTheme.dart';
import '../provider/myprovider.dart';
import '../settings/settings details.dart';
import 'ahadeth.dart';

class HomeScreen extends StatefulWidget {
static const String routeName="Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.mode==ThemeMode.light?"assets/imegas/background.png"
              :"assets/imegas/bg.png"
          ,fit:BoxFit.fitWidth,width: double.infinity,),
        Scaffold(
          appBar: AppBar(

            title: Text(AppLocalizations.of(context)!.appTitle,style: Theme.of(context).textTheme.headline1,),
          ),
          bottomNavigationBar: BottomNavigationBar(

            currentIndex: currentIndex,
            onTap: (index){
              currentIndex=index;
              setState(() {

              });
            },
            items: [
              BottomNavigationBarItem(icon: ImageIcon(
                  AssetImage("assets/imegas/quran.png")
              ),label: AppLocalizations.of(context)!.quran,backgroundColor:
              provider.mode==ThemeMode.light? MyThemeData.colorGold:MyThemeData.darkprimery),
              BottomNavigationBarItem(icon: ImageIcon(
                  AssetImage("assets/imegas/sebha.png")
              ),label: AppLocalizations.of(context)!.sebha,backgroundColor:provider.mode==ThemeMode.light? MyThemeData.colorGold:MyThemeData.darkprimery,),
              BottomNavigationBarItem(icon: ImageIcon(
                  AssetImage("assets/imegas/radio.png")
              ),label: AppLocalizations.of(context)!.radio,backgroundColor: provider.mode==ThemeMode.light? MyThemeData.colorGold:MyThemeData.darkprimery),
              BottomNavigationBarItem(icon: ImageIcon(
                  AssetImage("assets/imegas/ahadeth.png")
              ),label: AppLocalizations.of(context)!.ahadeth,backgroundColor: provider.mode==ThemeMode.light? MyThemeData.colorGold:MyThemeData.darkprimery),
              BottomNavigationBarItem(icon: Icon(Icons.settings
              ),label: AppLocalizations.of(context)!.settings,backgroundColor: provider.mode==ThemeMode.light? MyThemeData.colorGold:MyThemeData.darkprimery),


            ],
          ),
          body: tabs[currentIndex],

        ),
      ],
    );
  }
  List<Widget>tabs=[
    QuranTap(),
    SebhaTap(),
    RadioTap(),
    AhadethTap(),
    SettingsTap(),
  ];
}
