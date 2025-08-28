// main.dart ou onde o seu MyDrawer estiver
import 'package:flutter/material.dart';

import 'config.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // Variável para simular o status de login.
    // Em uma aplicação real, você usaria o estado de um Provider, Bloc, etc.
    final bool isLoggedIn = false; // Altere para 'false' para testar o Caso 1

    return Drawer(
      child: Column(
        children: [
          // Conteúdo condicional do DrawerHeader
          if (isLoggedIn)
          // Caso 2: Usuário logado
            _buildLoggedInHeader(context)
          else
          // Caso 1: Usuário não logado
            _buildLoggedOutHeader(context),

          // ... (O restante do seu código do Drawer)
          // Acesso à página inicial → '/'
          ListTile(
            title: const Text('Inicio'),
            leading: const Icon(Icons.home),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/');
            },
          ),

          // ... (outros itens da lista)
          ListTile(
            title: const Text('Contatos'),
            leading: const Icon(Icons.contact_mail),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/contacts');
            },
          ),

          const Divider(),

          ListTile(
            title: const Text('Privacidade'),
            leading: const Icon(Icons.lock),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/policies');
            },
          ),

          ListTile(
            title: const Text('Informações'),
            leading: const Icon(Icons.info),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/info');
            },
          ),

          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  '${Config.copyright}\nTodos os direitos reservados',
                  style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Funções para construir os diferentes cabeçalhos
Widget _buildLoggedOutHeader(BuildContext context) {
  return DrawerHeader(
    child: InkWell( // Permite que o header seja clicável
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, '/login'); // Rota para a tela de login
      },
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            child: Icon(Icons.person, size: 40),
          ),
          SizedBox(width: 16),
          Text(
            'Google Login',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ],
      ),
    ),
  );
}

Widget _buildLoggedInHeader(BuildContext context) {
  // Dados falsos de usuário para o exemplo
  final String userName = 'Joca da Silva';
  // Simule a imagem do usuário com um CircleAvatar com cor
  final Widget userImage = const CircleAvatar(
    radius: 30,
    backgroundColor: Colors.blue,
    child: Text('JS', style: TextStyle(color: Colors.white, fontSize: 24)),
  );

  return DrawerHeader(

    child: InkWell( // Permite que o header seja clicável
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, '/profile'); // Rota para o perfil
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          userImage,
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              const Text(
                'Ver perfil',
                style: TextStyle(fontSize: 14.0, color: Colors.blue),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}