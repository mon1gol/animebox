import 'package:animebox/core/utils/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [SearchRoute(), ProfileRoute(), SettingsRoute()],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: false,
            currentIndex: tabsRouter.activeIndex,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
            onTap: (index) => _openPage(index, tabsRouter),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Поиск'),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Профиль',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Найстройки',
              ),
            ],
          ),
        );
      },
    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}
