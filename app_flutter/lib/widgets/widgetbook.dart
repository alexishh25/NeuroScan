import 'package:flutter/material.dart';
import 'package:neuroscan/Vistas/AnalisisCarga.dart';
import 'package:neuroscan/Vistas/menu.dart';
import 'package:neuroscan/vistas/Resultados.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: [
        WidgetbookFolder(name: 'Vista',
            children: [
              WidgetbookComponent(name: 'menu', useCases: [
                WidgetbookUseCase(name: 'menu', builder: (context) => const menu())
              ]),
              WidgetbookComponent(name: 'AnalisisCarga', useCases: [
                WidgetbookUseCase(name: 'AnalisisCarga', builder: (context) => const AnalisisCarga())
              ]),
              WidgetbookComponent(name: 'Resultados', useCases: [
                WidgetbookUseCase(name: 'Resultados', builder: (context) => const Resultados())
              ]),
              WidgetbookComponent(name: 'Resultados', useCases: [
                WidgetbookUseCase(name: 'Resultados', builder: (context) => const Resultados())
              ]),
            ])
      ],
    );
  }
}
