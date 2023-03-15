import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/radio/radio_item.dart';
import 'package:http/http.dart'as http;
import 'package:untitled1/radio/radio_model.dart';

class RadioTap extends StatefulWidget {

  @override
  State<RadioTap> createState() => _RadioTapState();
}

class _RadioTapState extends State<RadioTap> {
  var audioplayer =AudioPlayer();

  @override
  Widget build(BuildContext context) {
    var screensize =MediaQuery.of(context).size;
    return FutureBuilder<RadioModel>(
      future: getRadios(),
      builder: ( context, snapshot) {
        if(snapshot.hasData) {
          var radios= snapshot .data?.radios??[];
            return Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset("assets/imegas/RadioTap.png"),
                SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: ListView.builder(
                    physics: PageScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: radios.length,
                      itemBuilder: (context, index) => Center(
                        child: SizedBox(
                          width: screensize.width,
                            child: RadioItem(radio:radios[index],audioPlayer: audioplayer,)),
                      )),
                )
              ],
            );
          }
        else if(snapshot.hasError){
          return Text("${snapshot.error??""}");

        }else{
          return Center(child: CircularProgressIndicator());
        }
        }
    );



  }

  Future<RadioModel> getRadios()async{
var URL=Uri.parse("https://mp3quran.net/api/v3/radios");
var response=await http.get(URL);
var json=jsonDecode(response.body);
if(response.statusCode == 200){
  return RadioModel.fromJson(json);

}else{
  throw Exception("faild");
}
  }
}
