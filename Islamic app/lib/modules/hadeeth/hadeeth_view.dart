import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/modules/hadeeth/HadeethDetails.dart';

class HadeethView extends StatelessWidget {
  List<HadeethContent> allHadeeth = [];

  HadeethView({super.key});

  @override
  Widget build(BuildContext context) {
    readHadeeth();
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/hadeeth_header.png"),
        Divider(
          color: theme.primaryColor,
          thickness: 3,
        ),
        Text("الأحاديث", style: theme.textTheme.bodyLarge),
        Divider(
          color: theme.primaryColor,
          thickness: 3,
        ),
        Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, HadeethDetails.routeName,
                            arguments: HadeethContent(
                                title: allHadeeth[index].title,
                                content: allHadeeth[index].content));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2.5),
                        child: Text("الحديث رقم ${index + 1}",
                            style: theme.textTheme.bodyMedium,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center),
                      ),
                    ),
                itemCount: 50)),
      ],
    );
  }

  readHadeeth() async {
    String Hadeeth = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allhadeeth = Hadeeth.split("#");
    for (int i = 0; i < allhadeeth.length; i++) {
      String singleHadeeth = allhadeeth[i].trim();
      int indexOfFirstLine = singleHadeeth.indexOf("\n");
      String title = singleHadeeth.substring(0, indexOfFirstLine);
      String content = singleHadeeth.substring(indexOfFirstLine + 1);
      HadeethContent hadeethContent =
          HadeethContent(title: title, content: content);
      allHadeeth.add(hadeethContent);
    }
  }
}

class HadeethContent {
  final String title;
  final String content;

  HadeethContent({required this.title, required this.content});
}
