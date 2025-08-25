library;

/// Rodapé
/// Pode ser usado em qualquer página. Exemplo de uso:
/// return Scafold (
///     bottomNavigationBar: MyBottomNavBar()
///     ...
/// )

import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: EdgeInsetsGeometry.zero,
      color: Colors.indigo, // Cor de fundo do BottomAppBar
      // Ajuste a altura do BottomAppBar envolvendo o Row em um SizedBox
      child: SizedBox(
        height: 0.0, // <-- Defina a altura desejada aqui (valor padrão é 56.0)
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // Distribui os itens uniformemente
          children: <Widget>[
            IconButton(
              // Cor do ícone
              color: Colors.white,
              // Ao passar mouse
              hoverColor: Colors.orange,
              // Ao pressionar
              highlightColor: Colors.black,
              // Ícone de casa
              icon: const Icon(Icons.home),
              // Tamanho do ícone
              iconSize: 30.0,
              // Ao para o moue, mostra o text
              tooltip: 'Página Inicial',
              // Navegar para a página inicial.
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              color: Colors.white,
              hoverColor: Colors.orange,
              highlightColor: Colors.black,
              iconSize: 30.0,
              onPressed: () {
                Navigator.pushNamed(context, '/search');
              },
              // onPressed
              tooltip: 'Pesquisar',
            ),
            IconButton(
              icon: const Icon(Icons.info),
              color: Colors.white,
              hoverColor: Colors.orange,
              highlightColor: Colors.black,
              iconSize: 30.0,
              onPressed: () {
                Navigator.pushNamed(context, '/info');
              },
              // onPressed
              tooltip: 'Informações',
            ),
          ], // children
        ), // Row
      ), // SizedBox
    ); // BottomAppBar
  } // build
} // MyBottomNavBar