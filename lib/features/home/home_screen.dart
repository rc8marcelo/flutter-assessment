import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/core/routing/router.gr.dart';

const _title = 'Home';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, _) {
        return AppBar(title: Text(_title));
      },
      routes: const [
        MapScreen(),
        NewsFeedScreen(),
        CalculatorScreen(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          backgroundColor: Color(0xFFDEDEDE),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              label: 'Map',
              icon: Icon(Icons.map),
            ),
            BottomNavigationBarItem(
              label: 'Newsfeed',
              icon: Icon(Icons.feed),
            ),
            BottomNavigationBarItem(
              label: 'Calculator',
              icon: Icon(Icons.calculate),
            ),
          ],
        );
      },
    );
  }
}
