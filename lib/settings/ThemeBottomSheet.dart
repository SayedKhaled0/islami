import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/MyTheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../provider/myprovider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return Column(
      children: [
        InkWell(
          onTap: (){
            pro.changeTheme(ThemeMode.light);
            Navigator.pop(context);


          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(AppLocalizations.of(context)!.light,style: Theme.of(context).textTheme.headline1?.copyWith(
                  color:pro.mode==ThemeMode.light?
              Colors.black:MyThemeData.yellowColor),),
              Icon(Icons.done,size: 30,color:pro.mode==ThemeMode.light?MyThemeData.colorBlack:MyThemeData.yellowColor)
            ],
          ),
        ),
        SizedBox(height: 20,),
        InkWell(
          onTap: (){
            pro.changeTheme(ThemeMode.dark);
            Navigator.pop(context);


          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Text(AppLocalizations.of(context)!.dark,style: Theme.of(context).textTheme.headline1?.copyWith(
                  color:pro.mode==ThemeMode.dark?
              Colors.white:MyThemeData.yellowColor),),
              Icon(Icons.done,size: 30,color: pro.mode==ThemeMode.dark?Colors.white:MyThemeData.yellowColor)
            ],
          ),
        ),
      ],
    );
  }
}
