library;

/// Página inicial do aplicativo
///     Obtém e exibe a lista de itens da API

// Importa a barra superior para uso nesta página
import 'package:Flutter_app/template/myappbar.dart';

// Importa o menu princial
import 'package:Flutter_app/template/mydrawer.dart';

import 'package:flutter/material.dart';

import '../template/config.dart';
import '../template/myfooter.dart';

var pageName = Config.appName;

// Página inicial do aplicativo
class HomePage extends StatelessWidget {
  // Construtor
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // LayoutBuilder permite ajustar o conteúdo para resoluções diferentes
    return LayoutBuilder(
      builder: (context, constraints) {
        // Se a largura é de 1080+
        if (constraints.maxWidth > 1080) {
          // Versão para desktop
          return Row(
            children: [
              const MyDrawer(), // O menu lateral fixo
              Expanded(
                // Usei um Scaffold aninhado para ter uma AppBar na página
                child: Scaffold(
                  appBar: MyAppBar(title: pageName),
                  // O conteúdo principal da página
                  body: Center(child: PageContent()),
                ),
              ),
            ],
          );
        } else {
          // Versão para mobile/tablet
          return Scaffold(
            appBar: MyAppBar(title: pageName),
            drawer: const MyDrawer(), // O menu deslizante
            body: Center(child: PageContent()),
          );
        }
      },
    );
  }
}

// Conteúdo da página atual a ser usado em qualquer resolução
class PageContent extends StatelessWidget {
  // Parâmetro com valor padrão 'false'
  final bool showTitle;

  const PageContent({super.key, this.showTitle = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // A sintaxe "if" em uma coleção (collection if)
        if (showTitle)
          const Text(
            Config.appName,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        const Text('Esta é uma Página Stateless!'),
        const SizedBox(height: 20),
        const Text('Essa é a página principal'),
      ],
    );
  }
}
