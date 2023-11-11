import 'package:flutter/material.dart';

mixin AppBarCustom {
  AppBar appBarWithOutReturnButton({String title = 'No tiene Titulo'}) =>
      AppBar(
        title: Text(title),
        automaticallyImplyLeading: false,
      );
  AppBar appBarWithReturnButton({String title = 'No tiene Titulo'}) =>
      AppBar(title: Text(title));
}
