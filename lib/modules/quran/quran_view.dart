import 'package:flutter/material.dart';
import 'package:islami_app/modules/quran/widgets/quran_details_view.dart';
import 'package:islami_app/modules/quran/widgets/sura_title_widget.dart';

class QuranView extends StatelessWidget {
  static const String routeName = "quran";
  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset("assets/images/QuranViewImage.png")),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Divider(
              color: Theme.of(context).dividerTheme.color,
              thickness: 3,
            ),
            SuraTitleWidget(
              name: "اسم السورة",
              number: "رقم السورة",
            ),
            Divider(
              color: Theme.of(context).dividerTheme.color,
              thickness: 3,
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
              itemCount: suraName.length,
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, QuranDetailsView.routeName,
                          arguments: SuraTitleWidget(
                              name: suraName[index], number: "${index + 1}"));
                    },
                    child: SuraTitleWidget(
                        name: suraName[index], number: "${index + 1}"),
                  )),
        )
      ],
    );
  }
}
