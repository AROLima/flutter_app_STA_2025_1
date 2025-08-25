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

final pageName = Config.appName;

// Página inicial
class InfoPage extends StatelessWidget {
  // Construtor
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior
      appBar: MyAppBar(title: 'Informações',),

      // Corpo da página com conteúdo centralizado
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Widgets de Column
          children: [
            const Text('Esta é uma Página Stateless!'),
            const SizedBox(height: 20),
            const Text('Essa é a de informações'),
          ],
        ),
      ),

      // Barra inferior (footer)
      bottomNavigationBar: MyBottomNavBar(),

      // Menu lateral (hamburger)
      drawer: MyDrawer(),
    );
  }
}