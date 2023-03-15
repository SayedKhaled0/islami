import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/MyTheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../provider/myprovider.dart';
import 'LanguageBottomSheet.dart';
import 'ThemeBottomSheet.dart';

class SettingsTap extends StatelessWidget {
  const SettingsTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,style: Theme.of(context).textTheme.headline1,),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(12),

              decoration: BoxDecoration(
                border: Border.all(color:provider.mode==ThemeMode.light?MyThemeData.colorBlack:MyThemeData.yellowColor),
                borderRadius: BorderRadius.circular(14)
              ),
              child: Text(provider.languageCode=="en"?AppLocalizations.of(context)!.english:AppLocalizations.of(context)!.arabic,style: Theme.of(context).textTheme.headline1?.copyWith(
                color: MyThemeData.colorGold,
              )),

            ),
          ),
          SizedBox(height: 20,),
          Text(AppLocalizations.of(context)!.mode,style: Theme.of(context).textTheme.headline1,),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showThemeBottomSheet(context);
            },
            child: Container(

              padding: EdgeInsets.all(12),

              decoration: BoxDecoration(
                  border: Border.all(color: provider.mode==ThemeMode.light?MyThemeData.colorBlack:MyThemeData.yellowColor),
                  borderRadius: BorderRadius.circular(14)
              ),
              child: Text(provider.mode==ThemeMode.light?AppLocalizations.of(context)!.light:AppLocalizations.of(context)!.dark,style: Theme.of(context).textTheme.headline1?.copyWith(
                color: MyThemeData.colorGold,
              )),


            ),
          ),

        ],
      ),
    );
  }
  void showThemeBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return ThemeBottomSheet();

    });

    }
  void showLanguageBottomSheet(BuildContext context){
showModalBottomSheet(context: context, builder: (context){
  return LanguageBottomSheet();
});
}
}
