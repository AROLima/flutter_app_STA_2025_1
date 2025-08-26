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
class HomePage extends StatelessWidget {
  // Construtor
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior
      appBar: MyAppBar(title: pageName,),

      // Corpo da página com conteúdo centralizado
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Widgets de Column
          children: [
            SizedBox(
              child: Image.network('https://cdn.prod.website-files.com/5ee12d8e99cde2e20255c16c/6568c2ba1a8d8d7e70db140e_FlutterConf%20Extended%20(1).png'),
            ),
            SizedBox(height: 20),
            const Text('Esta é uma Página Stateless!'),
            const SizedBox(height: 20),
            const Text('Essa é a página inicial'),
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
