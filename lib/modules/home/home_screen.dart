import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:target/core/constants/assets_constants.dart';
import 'package:target/core/constants/colors_constants.dart';
import 'package:target/modules/infos/infos_screen.dart';
import 'package:target/modules/report/report_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const InfosScreen(),
    const ReportScreen(),
    const Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Image.asset(AssetsConstants.kTargetTinyLogo, height: 35),
              ],
            ),
          ),
        ),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: ColorsConstants.primaryColor,
        backgroundColor: ColorsConstants.screenBackgroundColor,
        animationCurve: Curves.easeOutQuint,
        items: [
          Icon(
            Icons.add,
            size: 30,
            color: ColorsConstants.screenBackgroundColor,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: ColorsConstants.screenBackgroundColor,
          ),
          Icon(
            Icons.account_circle_outlined,
            size: 30,
            color: ColorsConstants.screenBackgroundColor,
          ),
        ],
        onTap: (index) {
          setState(() => currentIndex = index);
        },
      ),
    );
  }
}
