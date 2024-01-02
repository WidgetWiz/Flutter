import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/modules/quraan/quraan_view.dart';

class QuraanDetails extends StatefulWidget {
  static const String routeName = 'QuraanDetails';

  @override
  State<QuraanDetails> createState() => _QuraanDetailsState();
}

class _QuraanDetailsState extends State<QuraanDetails> {
  String suraContent = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (suraContent.isEmpty) readQuraanDetails(args.suraNumber);
    var theme = Theme.of(context);

    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/background_light.png"),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("Quraan"),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" سورة ${args.suraName}",
                        style: theme.textTheme.bodyLarge),
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0, bottom: 1.0),
                      child: Icon(
                        Icons.play_circle,
                        color: theme.primaryColor,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: theme.primaryColor,
                  thickness: 3,
                  indent: 50,
                  endIndent: 50,
                ),
                Expanded(
                    child: ListView.builder(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, right: 30, left: 30),
                  itemBuilder: (context, index) => Text(
                    allVerses[index],
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: theme.textTheme.bodySmall,
                  ),
                      itemCount: allVerses.length,
                )
                )
              ],
            ),
          ),
        ));
  }

  readQuraanDetails(String index) async {
    String sura = await rootBundle.loadString("assets/files/$index.txt");
    suraContent = sura;
    setState(() {
      allVerses = suraContent.split("\n");
    });
  }
}
