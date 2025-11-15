import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class BottomNavbarItem {
  final Icon icon;
  final Icon selectedIcon;
  final String label;
  final String route;

  const BottomNavbarItem({
    required this.icon,
    required this.selectedIcon,
    required this.label,
    required this.route,
  });
}

const bottomNavbarItems = [
  BottomNavbarItem(
    icon: Icon(PhosphorIconsRegular.houseSimple),
    selectedIcon: Icon(PhosphorIconsFill.houseSimple),
    label: 'Home',
    route: '/',
  ),

  BottomNavbarItem(
    icon: Icon(PhosphorIconsRegular.courtBasketball),
    selectedIcon: Icon(PhosphorIconsFill.courtBasketball),
    label: 'Matches',
    route: '/',
  ),
];
