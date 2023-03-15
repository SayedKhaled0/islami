import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../MyTheme.dart';
import '../provider/myprovider.dart';
import '../provider/suraprovider/suraprovider.dart';
class SuraDetails extends StatelessWidget {
  static const String routeName="suradetails";

  @override
  Widget build(BuildContext context) {
    var prov=Provider.of<MyProvider>(context);

    var pro=Provider.of<SuraProvider>(context);
    SuraDetailsArgs args=ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if(pro.verses.isEmpty) {
      pro.loedFile(args.index);
    }
    return Stack(children: [
      Image.asset(
        prov.mode==ThemeMode.light?"assets/imegas/background.png"
            :"assets/imegas/bg.png",
        fit: BoxFit.fitWidth,
        width: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          title:

          Text(

            args.suraName,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: pro.verses.length==0?Center(child: CircularProgressIndicator()):Container(

          margin: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
          decoration: BoxDecoration(
            color: prov.mode==ThemeMode.light?Colors.white:MyThemeData.darkprimery,
            border: Border.all(color: MyThemeData.colorGold,width: 3),
            borderRadius: BorderRadius.circular(25)
          ),
          child: ListView.separated(
            separatorBuilder: (c,index){
              return Divider(
                color: MyThemeData.colorGold,
                indent: 30,
                endIndent: 30,
              );
            },
            itemCount:pro. verses.length,
              itemBuilder: (c,index){return Text(pro.verses[index],style:Theme.of(context).textTheme.headline2?.copyWith(
                  color:prov.mode==ThemeMode.light?
                  Colors.black:MyThemeData.yellowColor),textAlign: TextAlign.center,);}),
        ),
      )
    ]);
  }
}

class SuraDetailsArgs{
  String suraName;
  int index;
  SuraDetailsArgs(this.suraName,this.index);

}
