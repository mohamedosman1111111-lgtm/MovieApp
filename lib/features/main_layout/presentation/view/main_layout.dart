import 'package:flutter/material.dart';
import 'package:movie/core/resources/assets_manager.dart';
import 'package:movie/features/explore/presentaion/view/explore_tab.dart';
import 'package:movie/features/home/presentaion/view/home_tab.dart';
import 'package:movie/features/profile/presentaion/view/profile_tab.dart';
import 'package:movie/features/search/presentaion/view/search_tab.dart';

class MainLayout extends StatefulWidget {
  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int selectedTapIndex = 0;

  List<Widget> taps = [HomeTab(), SearchTab(), ExploreTab(), ProfileTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [taps[selectedTapIndex]]),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: (tapIndex) {
          setState(() {
            selectedTapIndex = tapIndex;
          });
        },
        currentIndex: selectedTapIndex,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(IconAssets.homeIcon)),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(IconAssets.searchIcon)),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(IconAssets.exploreIcon)),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(IconAssets.profileIcon)),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
