import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Receta 0'},
  {'elevation': 1.0, 'label': 'Receta 1'},
  {'elevation': 2.0, 'label': 'Receta 2'},
  {'elevation': 3.0, 'label': 'Receta 3'},
  {'elevation': 4.0, 'label': 'Receta 4'},
  {'elevation': 5.0, 'label': 'Receta 5'},
];

class CardsScreen extends StatelessWidget {
  static const String screenName = 'card_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 56,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 1, 112, 106)),
              child: Row(
                children: [
                  const IconButton(
                    icon: Icon(Icons.menu),
                    tooltip: 'Navigation menu',
                    onPressed: null, // null disables the button
                  ),
                  // Expanded expands its child
                  // to fill the available space.

                  const IconButton(
                    icon: Icon(Icons.search),
                    tooltip: 'Search',
                    onPressed: null,
                  ),
                ],
              ),
            ),
            ...cards.map((card) =>
                _CardType1(label: card['label'], elevation: card['elevation'])),
            ...cards.map((card) =>
                _CardType2(label: card['label'], elevation: card['elevation'])),
            ...cards.map((card) =>
                _CardType3(label: card['label'], elevation: card['elevation'])),
            ...cards.map((card) =>
                _CardType4(label: card['label'], elevation: card['elevation'])),
            ...cards.map((card) =>
                _CardType5(label: card['label'], elevation: card['elevation'])),
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) => Card(
        elevation: elevation,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(label),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert_outlined)))
            ],
          ),
        ),
      );
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType2({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: colors.outline),
          borderRadius: const BorderRadius.all(Radius.circular(50))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_outlined))),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - filled '),
            )
          ],
        ),
      ),
    );
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType3({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.surfaceVariant,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_outlined))),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - filled '),
            )
          ],
        ),
      ),
    );
  }
}

class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType4({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network('https://picsum.photos/id/${elevation.toInt()}/600/250',
              height: 350, fit: BoxFit.cover),
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_outlined),
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}

class _CardType5 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType5({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network('https://picsum.photos/id/${elevation.toInt()}/600/250',
              height: 350, fit: BoxFit.cover),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(20))),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_outlined)),
              )),
        ],
      ),
    );
  }
}
