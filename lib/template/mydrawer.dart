library;

/// Menu lateral
/// Pode ser usado em qualquer página. Exemplo de uso:
///  return Scafold(
///    drawer: Mydrawer(),
///    ...
///  );

import 'package:flutter/material.dart';

import 'config.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Center(
              child: Text(
                Config.appName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
              ),
            ),
          ),

          // Acesso à página inicial → '/'
          ListTile(
            title: const Text('Inicio'),
            leading: const Icon(Icons.home),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/');
            },
          ),

          // Acesso à página de contatos → '/contacts'
          ListTile(
            title: const Text('Contatos'),
            leading: const Icon(Icons.contact_mail),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/contacts');
            },
          ),

          // Linha divisória
          const Divider(),

          // Acesso à página de informações → '/info'
          ListTile(
            title: const Text('Privacidade'),
            leading: const Icon(Icons.lock),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/policies');
            },
          ),

          // Acesso à página de informações → '/info'
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
                padding: EdgeInsets.only(bottom: 20.0),
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
