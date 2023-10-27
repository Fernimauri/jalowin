import 'package:aplicacion/config/menu/menu_items.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aplicacion Widget')),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: appMenuItems.length, itemBuilder: menuList);
  }

  Widget menuList(BuildContext context, int index) {
    final menuItem = appMenuItems[index];
    return Row(
      children: [
        Icon(
          menuItem.icon,
          color: Colors.teal,
        ),
        Text(menuItem.title)
      ],
    );
  }
}
