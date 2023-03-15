import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../suradetails/suradetails.dart';

class SuraNameItem extends StatelessWidget {
String name;
int index;

SuraNameItem(this.name,this.index);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetails.routeName,
        arguments:SuraDetailsArgs(name,index) );
      },
        child: Text(name,textAlign:TextAlign.center,style: Theme.of(context).textTheme.headline1,));
  }
}
