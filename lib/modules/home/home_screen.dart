import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:target/core/constants/style_constants.dart';
import 'package:target/modules/home/widgets/home_app_bar.dart';
import 'package:target/modules/infos/info_screen.dart';
import 'package:target/modules/report/report_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const InfoScreen(),
    const ReportScreen(),
    const Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Padding(
        padding: StyleConstants.screenPadding,
        child: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: StyleConstants.primaryColor,
        backgroundColor: StyleConstants.screenBackgroundColor,
        animationCurve: Curves.easeOutQuint,
        items: [
          Icon(
            Icons.add,
            size: 30,
            color: StyleConstants.screenBackgroundColor,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: StyleConstants.screenBackgroundColor,
          ),
          Icon(
            Icons.account_circle_outlined,
            size: 30,
            color: StyleConstants.screenBackgroundColor,
          ),
        ],
        onTap: (index) {
          setState(() => currentIndex = index);
        },
      ),
    );
  }
}
