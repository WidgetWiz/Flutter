import 'package:flutter/material.dart';

class QuraanItem extends StatelessWidget {
  QuraanItem ({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          Expanded(child: Text(
            "عدد الآيات",
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),),
          VerticalDivider(
            color: theme.primaryColor,
            thickness: 3,
          ),
          Expanded(child: Text(
            "إسم السورة",
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),),
        ],
      ),
    );
  }
}
