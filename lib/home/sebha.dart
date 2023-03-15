import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../MyTheme.dart';
import '../provider/sebhaprovider/sebhaprovider.dart';

class SebhaTap extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<SebhaProvider>(context);
    return Scaffold(
      appBar: AppBar(


      ),

      body: Center(
        child: Column(
          children: [


            Padding(

              padding: const EdgeInsets.all(1.0),


              child: Expanded(child: InkWell(
                child: Image.asset("assets/imegas/Group 8.png"),
                onTap: pro.incrementCounter,)),
            ),

            Text(
              "عدد التسبيحات",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                alignment: Alignment.center,
                width: 45,
                padding: EdgeInsets.all(10),

                decoration: BoxDecoration(
                    color: MyThemeData.colorGold,
                    borderRadius: BorderRadius.circular(15)
                ),


                child: Text(
                  "${pro.counter}",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                width: 200,
                padding: EdgeInsets.all(10),

                decoration: BoxDecoration(
                    color: MyThemeData.colorGold,
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Text(
                  pro.SebhaStrings[pro.index],
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
}




