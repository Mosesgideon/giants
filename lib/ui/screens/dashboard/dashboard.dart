import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:giants/ui/screens/homescreen/home_screen.dart';
import 'package:giants/ui/screens/leaderboard/leaderboard_screen.dart';
import 'package:giants/ui/screens/profile/profile_screen.dart';
import 'package:iconsax/iconsax.dart';
import 'package:giants/ui/widgets/dashboard_widget/dashboard_widget.dart';
class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int selectindex = 0;
  static List<StatefulWidget> pages = [
    const HomeScreen(),
    const LeaderBoard(),
    const ProfileScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: selectindex, children: pages),
      bottomNavigationBar: NavBar(
        indicator: CircleAvatar(
          radius: 10,
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        navItem: [
          NavItemModel(
            onTap: () {},
            icon: const Icon(Iconsax.home),
          ),
          NavItemModel(
            onTap: () {},
            icon: const Icon(Iconsax.chart_21),
          ),
          NavItemModel(
            onTap: () {},
            icon: const Icon(Iconsax.profile_add),
          ),
        ],
        onTap: (int index) {
          log('index is $index');
          _switchTap(index);
        },
      ),
    );
  }

  _switchTap(int index) {
    setState(() {
      selectindex = index;
    });
  }
}