import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuraanView extends StatelessWidget {
  const QuraanView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/quraan_header.png"),
        Divider(
          thickness: 3,
          color: theme.primaryColor,
          indent: 10,
          endIndent: 10,
          height: 0,
        ),
        SizedBox(
          height: 40,
          child: Row(
              children: [
                Expanded(child: Text("عدد الآيات", textAlign: TextAlign.center),),
                VerticalDivider(
                  color: theme.primaryColor,
                  thickness: 3,
                ),
                Expanded(child: Text("عدد الآيات", textAlign: TextAlign.center),),
              ],
            ),
        ),

        Divider(
          thickness: 3,
          color: theme.primaryColor,
          indent: 10,
          endIndent: 10,
          height: 0,
        ),
      ],
    );
  }
}
