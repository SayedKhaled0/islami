import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../MyTheme.dart';
import '../hadethdetails/HadethDetails.dart';
import '../provider/ahadethprovider/ahadethprovider.dart';

class AhadethTap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<AhadethProvider>(context);
    if(pro.Ahadeth.isEmpty);
    pro.loadHadethFile();
    return  Container(
      width: double.infinity,
      child: Column(
        children: [
          Image.asset("assets/imegas/ahadeth im.png"),
          Divider(color: MyThemeData.colorGold, thickness: 4,),
          Text(AppLocalizations.of(context)!.ahadeth,style: Theme.of(context).textTheme.headline1,textAlign: TextAlign.center,),
          Divider(color: MyThemeData.colorGold, thickness: 4,),
          pro.Ahadeth.isEmpty
              ?Center(child: CircularProgressIndicator())
          :Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: MyThemeData.colorGold,
              ),
              itemCount:pro. Ahadeth.length,
                itemBuilder: (c,iindex){
              return InkWell(
                onTap: (){
                  Navigator.pushNamed(context, HadethDetailss.routeName,
                  arguments: pro.Ahadeth[iindex]);
                },
                  child: Text(pro.Ahadeth[iindex].title,style: Theme.of(context).textTheme.headline1,textAlign: TextAlign.center,));
            }),
          )



        ],
      ),
    );
  }
}

class HadethData{
  String title;
  List<String>content;
  HadethData(this.title,this.content);
}
