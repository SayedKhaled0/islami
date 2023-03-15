import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/home/ahadeth.dart';

import '../MyTheme.dart';

class HadethDetailss extends StatelessWidget {
  static const String routeName = "hadethDetails";


  @override
  Widget build(BuildContext context) {
    var args = ModalRoute
        .of(context)
        ?.settings as HadethData;
    return Stack(
        children: [
          Image.asset("assets/imegas/background.png", fit: BoxFit.fitWidth,
            width: double.infinity,),

          Scaffold(
            appBar: AppBar(

              title: Text(args.title, style: Theme
                  .of(context)
                  .textTheme
                  .headline1,),
            ),
            body: Container(margin: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: MyThemeData.colorGold,width: 3),
                  borderRadius: BorderRadius.circular(25)
              ),
              child: ListView.builder(
                  itemCount: args.content.length,
                  itemBuilder: (_, index) {
                    return Text(args.content[index], style: Theme
                        .of(context)
                        .textTheme
                        .headline1, textAlign: TextAlign.center,);
                  }),
            ),
          )
        ]);
  }
}
