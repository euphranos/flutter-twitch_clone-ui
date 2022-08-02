import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/browse_screen.dart';
import 'package:flutter_application_1/screens/discover_screen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/widgets/custom_nav_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/custom_app_bar.dart';

class NavScreen extends StatefulWidget {
  NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  List<Widget> screens = [
    const HomeScreen(),
    const DiscoverScreen(),
    const BrowseScreen(),
  ];

  List items = [
    {
      "icon": Icon(
        MdiIcons.heartOutline,
      ),
      "activeIcon": Icon(
        MdiIcons.heart,
      ),
      "label": "Following",
    },
    {
      "icon": Icon(
        MdiIcons.compassOutline,
      ),
      "activeIcon": Icon(
        MdiIcons.compass,
      ),
      "label": "Discover",
    },
    {
      "icon": Icon(
        MdiIcons.imageFilterNone,
      ),
      "activeIcon": Icon(
        MdiIcons.imageFilterNone,
      ),
      "label": "Browse",
    }
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: getNavBar(),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60), child: customAppBar()),
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
    );
  }

  Widget getNavBar() {
    return CustomNavBar(
        selectedIndex: selectedIndex,
        func: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: items);
  }
}
