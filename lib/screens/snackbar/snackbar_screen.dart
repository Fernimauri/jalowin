import 'package:aplicacion/config/widget_bases/widget_bases.dart';
import 'package:aplicacion/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends WidgetScreen with AppBarCustom, CustomSnackBars {
  static const screenName = 'snackbar_screen';

  const SnackBarScreen({super.key}) : super(name: 'snackbar_screen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithReturnButton(title: 'Snackbars y Diálogos'),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => toShowSnackBarCustom(context,
              snackBarContent: const Text('Hola Fernimauri')),
          label: const Text('Mostrar Snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined)),
      body: const Center(child: _ShowButtonList()),
    );
  }
}

class _ShowButtonList extends StatelessWidget {
  const _ShowButtonList();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FilledButton.tonal(
            onPressed: () {
              showAboutDialog(context: context, children: [
                const Text(
                    'Pongase a leer chilo por que si no lee no sabra que esta leyendo, como diria el poderosisimo profe chong no es lo mismo un metro de encaje negro a reprobar la materia')
              ]);
            },
            child: const Text('Licencias usadas')),
        FilledButton.tonal(
            onPressed: () => OpenDialog(context),
            child: const Text('Mostrar Diálogo'))
      ],
    );
  }
}

void OpenDialog(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
            title: const Text('¿Estas super seguro |__?'),
            content: const Text(
                'Pongase a leer chilo por que si no lee no sabra que esta leyendo, como diria el poderosisimo profe chong no es lo mismo un metro de encaje negro a reprobar la materia'),
            actions: [
              TextButton(
                  onPressed: () => context.pop(),
                  child: const Text('Canceleseishon')),
              FilledButton(
                  onPressed: () => context.pop(),
                  child: const Text('"Entrego Mi alma"'))
            ],
          ));
}
