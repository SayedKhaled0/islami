import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/home/quran/suranameitem.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../MyTheme.dart';

class QuranTap extends StatefulWidget {
  const QuranTap({Key? key}) : super(key: key);

  @override
  State<QuranTap> createState() => _QuranTapState();
}

class _QuranTapState extends State<QuranTap> {
List<String>SuraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"

];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Image.asset("assets/imegas/quraimage.png"),
          Divider(color: MyThemeData.colorGold, thickness: 4,),
          Text(AppLocalizations.of(context)!.sura_name,style: Theme.of(context).textTheme.headline1,textAlign: TextAlign.center,),
          Divider(color: MyThemeData.colorGold, thickness: 4,),

          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(color: MyThemeData.colorGold,),

              itemCount:SuraName.length,
                itemBuilder: (_,index){
              return SuraNameItem(SuraName[index],index);
            }),
          )
        ],
      ),
    );
  }
}
