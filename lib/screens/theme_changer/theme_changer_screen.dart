<<<<<<< HEAD
import 'package:aplicacion/presentation/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:aplicacion/config/theme/app_theme.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const screenName = 'theme_changer_screen';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isDarkmode = ref.watch(themeNotifierProvider).isDarkMode;
=======

import 'package:flutter/material.dart';

class ThemeChangerScreen extends ConsumerWidget{

  static const name = 'theme_changer_screen';

  const ThemeChangerScreen({super.key});

@override
Widget build(BuildContext context, ref){

  final isDarkMode = ref.watch( themeNotifierProvider).isDarkMode;

>>>>>>> c6036377d5910ddedeab3c7034189f0d2937973b

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme changer'),
        actions: [
          IconButton(
<<<<<<< HEAD
              icon: Icon(isDarkmode
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined),
              onPressed: () {
                // ref.read(isDarkmodeProvider.notifier)
                //   .update((state) => !state );
                ref.read(themeNotifierProvider.notifier).toggleDarkMode();
              })
=======
            icon: Icon( isDarkmode ? Icons.dark_mode_outlined : Icons.light_mode_outlined ),
            onPressed: () {
              // ref.read(isDarkmodeProvider.notifier)
              //   .update((state) => !state );
              ref.read( themeNotifierProvider.notifier )
                .toggleDarkMode();

            })
>>>>>>> c6036377d5910ddedeab3c7034189f0d2937973b
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {
<<<<<<< HEAD
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(themeNotifierProvider).selectedColor;
=======

    final List<Color> colors = ref.watch( colorListProvider );
    final int selectedColor = ref.watch( themeNotifierProvider ).selectedColor;
    // final int selectedColor = ref.watch( selectedColorProvider );
    
>>>>>>> c6036377d5910ddedeab3c7034189f0d2937973b

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];

        return RadioListTile(
<<<<<<< HEAD
          title: Text('Este color', style: TextStyle(color: color)),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            ref.watch(themeNotifierProvider.notifier).changeColorIndex(index);
=======
          title: Text('Este color', style:  TextStyle( color: color )),
          subtitle: Text('${ color.value }'),
          activeColor: color,
          value: index, 
          groupValue: selectedColor, 
          onChanged: (value) {
            // ref.read(selectedColorProvider.notifier).state = index;
            ref.watch( themeNotifierProvider.notifier )
              .changeColorIndex(index);
>>>>>>> c6036377d5910ddedeab3c7034189f0d2937973b
          },
        );
      },
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> c6036377d5910ddedeab3c7034189f0d2937973b
