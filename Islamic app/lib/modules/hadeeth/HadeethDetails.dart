import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/modules/hadeeth/hadeeth_view.dart';

class HadeethDetails extends StatelessWidget {
  static const String routeName = 'HadeethDetails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as HadeethContent;
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
          title:
          Text(
                "Hadeeth",
              ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 60.0, left: 20, right: 20),
          child: Column(
              children: [
              Text(args.title,
              style: theme.textTheme.bodyLarge,
              textAlign: TextAlign.center,),
                Divider(
                  color: theme.primaryColor,
                  thickness: 3,
                  indent: 50,
                  endIndent: 50,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Text(
                      args.content,
                      style: theme.textTheme.bodyMedium,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,

                    ),
                    itemCount: 1,
                  )
                )
              ]
      ),
        ),
    )

    );
  }
}
