import 'package:flutter/material.dart';

class MenuItem {
  final String screenName;
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon,
      required this.screenName});
}

List<MenuItem> appMenuItems = <MenuItem>[
  const MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined,
      screenName: 'button_screen'),
  const MenuItem(
      title: 'Tarjetas',
      subTitle: 'un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card,
      screenName: 'card_screen'),
  const MenuItem(
      title: 'ProgressIndicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded,
      screenName: 'progress_screen'),
  const MenuItem(
      title: 'snackbar y diálogos',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline,
      screenName: 'snackbar_screen'),
  const MenuItem(
      title: 'Animated',
      subTitle: 'Animated',
      link: '/animated',
      icon: Icons.info_outline,
      screenName: 'animated_screen'),
      const MenuItem(
      title: 'UI Controls + Tiles',
      subTitle: 'Una serie de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined,
      screenName: 'ui_controls_screen'),
      
  const MenuItem(
      title: 'Introducción a la aplicación',
      subTitle: 'Pequeño tutorial introductorio',
      link: '/tutorial',
      icon: Icons.accessible_rounded,
      screenName: 'tutorial_screen'),
  const MenuItem(
      title: 'InfiniteScroll y Pull',
      subTitle: 'Listas infinitas y pull to refresh',
      link: '/infinite',
      icon: Icons.list_alt_rounded,
      screenName: 'infinite_screen'),
];
