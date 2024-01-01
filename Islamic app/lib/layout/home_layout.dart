import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/modules/hadeeth/hadeeth_view.dart';
import 'package:islamic_app/modules/quraan/quraan_view.dart';
import 'package:islamic_app/modules/radio/radio_view.dart';
import 'package:islamic_app/modules/sebha/sebha_view.dart';
import 'package:islamic_app/modules/settings_view/settings_view.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home_layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuraanView(),
    RadioView(),
    SebhaView(),
    HadeethView(),
    Settingsview()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/background_light.png"),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Center(
                child: Text(
              "Quraan",
            )),
          ),
          body: screens[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index){
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/moshaf_black.png")),
                  label: "Quraan"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio_black.png")),
                  label: "Radio"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha_black.png")),
                  label: "Sebha"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/hadeeth_black.png")),
                  label: "Hadeeth"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Settings"),
            ],
          ),
        ));
  }
}
