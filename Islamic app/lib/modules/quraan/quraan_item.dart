import 'package:flutter/material.dart';

class QuraanItem extends StatelessWidget {
  QuraanItem({super.key, required this.suraName, required this.suraNumber});

  final String suraName;
  final String suraNumber;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          Expanded(
            child: Text(
              suraNumber,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          VerticalDivider(
            color: theme.primaryColor,
            thickness: 3,
          ),
          Expanded(
            child: Text(
              suraName,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
