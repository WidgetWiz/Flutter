import 'package:calendar_timeline_sbk/calendar_timeline.dart';
import 'package:flutter/material.dart';


class homeLayout extends StatelessWidget {
  const homeLayout({super.key});
  static const String routeName = 'homeLayout';

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        alignment: const Alignment(0,2.7),
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            height: 150,
            color: theme.primaryColor,
            width: double.infinity,
            child:
              Text(
                'TODO App',style: theme.textTheme.titleLarge ,
              ),
          ),
              CalendarTimeline(
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(
                  const Duration(days: 365)),
                onDateSelected: (date) => print(date),
                leftMargin: 20,
                monthColor: Colors.white,
                dayColor: Colors.white,
                dayNameColor: theme.primaryColor,
                activeDayColor: theme.primaryColor,
                activeBackgroundDayColor: Colors.white,
                dotsColor: theme.primaryColor,
                locale: 'en',
              )
            ]
      ),
       bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage('assets/images/Icon feather-settings.png')),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage('assets/images/Icon feather-settings.png')),
            label: 'settings',
          )
        ]
      ),
    );
  }
}
