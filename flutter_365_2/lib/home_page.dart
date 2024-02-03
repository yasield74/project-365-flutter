import 'package:flutter/material.dart';
import 'package:flutter_365_2/example_destination.dart';

const List<ExampleDestination> destinations = <ExampleDestination>[
  ExampleDestination(
      'Messages', Icon(Icons.widgets_outlined), Icon(Icons.widgets)),
  ExampleDestination(
      'Profile', Icon(Icons.format_paint_outlined), Icon(Icons.format_paint)),
  ExampleDestination(
      'Settings', Icon(Icons.settings_outlined), Icon(Icons.settings)),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: NavigationRail(
                minWidth: 50,
                destinations:
                    destinations.map((ExampleDestination destination) {
                  return NavigationRailDestination(
                    label: Text(destination.label),
                    icon: destination.icon,
                    selectedIcon: destination.selectedIcon,
                  );
                }).toList(),
                selectedIndex: 0,
              ),
            ),
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(
                child: Container(
              color: Colors.blue,
            ))
          ],
        ),
      ),
      endDrawer: NavigationDrawer(
        children: [
          destinations.map((ExampleDestination destination) {
            return NavigationDrawerDestination(
                icon: destination.icon, label: destination.label),;
          }).toList()
        ],
      ),
    );
  }
}
