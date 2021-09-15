import 'package:flutter/material.dart';
import 'package:boxz_landing_page/helpers/responsive.dart';
import 'package:boxz_landing_page/helpers/style.dart';
import 'package:boxz_landing_page/widgets/drawer.dart';
import 'package:boxz_landing_page/widgets/mobile_navbar.dart';
import 'package:boxz_landing_page/widgets/navbar_desktop.dart';

import 'widgets/desktop.dart';
import 'widgets/mobile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        key: scaffoldKey,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? mobileTopBar(scaffoldKey)
            : PreferredSize(
                preferredSize: Size(screenSize.width, 1000),
                child: NavBar(),
              ),
        drawer: MobileMenu(),
        backgroundColor: bgColor,
        body: ResponsiveWidget(
          largeScreen: DesktopScreen(),
          smallScreen: MobileScreen(),
        ),
       
        );
  }
}
