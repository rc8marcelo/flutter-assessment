import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/core/routing/router.gr.dart';

const _title = 'Home';
const _mapTab = 'Map';
const _newsTab = 'Newsfeed';
const _calcTab = 'Calculator';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: Color(0xFFF4F4F4),
      appBarBuilder: (context, _) {
        return AppBar(
          leading: AutoBackButton(),
          title: Text(_title),
        );
      },
      routes: const [
        MapRoute(),
        NewsRouter(),
        CalculatorRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          backgroundColor: Color(0xFFDEDEDE),
          unselectedItemColor: Color(0xFF212121),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              label: _mapTab,
              icon: Icon(Icons.map),
            ),
            BottomNavigationBarItem(
              label: _newsTab,
              icon: Icon(Icons.feed),
            ),
            BottomNavigationBarItem(
              label: _calcTab,
              icon: Icon(Icons.calculate),
            ),
          ],
        );
      },
    );
  }
}
