import 'package:flutter/material.dart';
import 'package:betlyn/presentation/widgets/bottom_nav_items.dart';
import 'package:go_router/go_router.dart';

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    int getCurrentIndex(BuildContext context) {
      final location = GoRouterState.of(context).matchedLocation;
      if (location.startsWith('/matches')) return 1;
      return 0;
    }

    void onItemTapped(int index) {
      if (index == 0) context.go('/');
      if (index == 1) context.go('/matches');
    }

    return BottomNavigationBar(
      currentIndex: getCurrentIndex(context),
      onTap: (value) => onItemTapped(value),
      enableFeedback: false,
      selectedFontSize: 12.02,
      
      items: bottomNavbarItems
          .map(
            (item) => BottomNavigationBarItem(
              icon: item.icon,
              activeIcon: item.selectedIcon,
              label: item.label,
            ),
          )
          .toList(),
    );
  }
}
