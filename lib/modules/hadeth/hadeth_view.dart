import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c11_sun_4pm/modules/hadeth/hadith_details_view.dart';

// git & github

// 1- versioned files
// * have no update
// * have update
// * have update
// 2- unVersioned files

// commit

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    if (dataList.isEmpty) loadHadithData();
    return Column(
      children: [
        Image.asset(
          "assets/icons/hadith_header.png",
          scale: 3,
        ),
        const Divider(),
        Text(
          "الأحاديث",
          style: theme.textTheme.bodyMedium,
        ),
        const Divider(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  HadithDetailsView.routeName,
                  arguments: dataList[index],
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  textAlign: TextAlign.center,
                  dataList[index].title,
                ),
              ),
            ),
            itemCount: dataList.length,
          ),
        ),
      ],
    );
  }

  List<HadithData> dataList = [];

  Future<void> loadHadithData() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");

    List<String> allHadithDataList = content.split("#");

    for (int i = 0; i < allHadithDataList.length; i++) {
      String singleHadith = allHadithDataList[i].trim();

      int titleLength = singleHadith.indexOf("\n");

      String title = singleHadith.substring(0, titleLength);
      String body = singleHadith.substring(titleLength + 1);

      HadithData hadithData = HadithData(
        title: title,
        body: body,
      );

      dataList.add(hadithData);

      print(body);
    }
  }
}

class HadithData {
  final String title;
  final String body;

  HadithData({
    required this.title,
    required this.body,
  });
}
