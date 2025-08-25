library;

/// Barra superior das páginas
/// Para usar:
/// return Scafold(
///     appBar: MyAppBar(),  ← Para usar o títle padrão
///     ou
///     appBar: MyAppBar('Título da barra'),  ← Para personalizar o title
///     ...
/// );

import 'package:flutter/material.dart';

// MyAppBar agora retorna PreferredSizeWidget para ser compatível com AppBar
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  // Cria a variável com o título
  final String title;

  // Construtor recebe 'title' ou mantém o valor padrão
  const MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      backgroundColor: Colors.indigo,
      foregroundColor: Colors.white,
      centerTitle: true,
    );
  }

  @override
  // Implementa o getter required preferredSize da PreferredSizeWidget
  // Retorna o tamanho padrão de uma AppBar
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}