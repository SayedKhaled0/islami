import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/MyTheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../provider/myprovider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Column(
      children: [
        InkWell(
          onTap: (){
            provider.changeLanguage("en");
            Navigator.pop(context);

          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(AppLocalizations.of(context)!.english,style: Theme.of(context).textTheme.headline1?.copyWith(
                  color:provider.languageCode=="en"? MyThemeData.colorGold:MyThemeData.colorBlack),),
              Icon(Icons.done,size: 30,color: provider.languageCode=="en"?MyThemeData.colorGold:MyThemeData.colorBlack)
            ],
          ),
        ),
        SizedBox(height: 20,),
        InkWell(
          onTap: (){
            provider.changeLanguage("ar");
            Navigator.pop(context);

          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Text(AppLocalizations.of(context)!.arabic,style: Theme.of(context).textTheme.headline1?.copyWith(
                  color:provider.languageCode=="ar"? MyThemeData.colorGold:MyThemeData.colorBlack),),
              Icon(Icons.done,size: 30,color:  provider.languageCode=="ar"?MyThemeData.colorGold:MyThemeData.colorBlack,)
            ],
          ),
        ),
      ],
    );
  }
}
