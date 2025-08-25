library;

/// Aplicativo principal
/// Contém a configuração do MaterialApp e as rotas nomeadas

import 'package:flutter/material.dart';

import '../pages/contacts_page.dart'; //Contact Page
import '../pages/home_page.dart'; // Home Page
import 'config.dart'; // Configurações do App
import '../pages/search_page.dart'; //Search page
import '../pages/info_page.dart'; //Info page
import '../pages/policies_page.dart'; //Policies page


// MyApp é um StatelessWidget, o que significa que seu estado não muda ao longo do tempo.
// Ele define a estrutura básica do aplicativo, incluindo o tema e as rotas.
class MyApp extends StatelessWidget {
  // Construtor da classe MyApp. O 'key' é usado para identificar widgets de forma única.
  const MyApp({super.key});

  @override
  // O método build descreve a interface do usuário para este widget.
  Widget build(BuildContext context) {
    // MaterialApp é um widget que encapsula a funcionalidade de design de material do Flutter.
    return MaterialApp(
      // Desliga o modo "Debug" (a faixa vermelha de depuração no canto superior direito).
      // debugShowCheckedModeBanner: false,
      // Título do aplicativo, visível na barra de tarefas do Android ou no switcher de aplicativos.
      title: Config.appName,
      // Define o tema visual do aplicativo.
      theme: ThemeData(
        // Define a cor primária para o azul.
        primarySwatch: Colors.blue,
        // Adapta a densidade visual da interface do usuário à plataforma.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      // Define a rota inicial do aplicativo.
      initialRoute: '/',

      // Define as rotas nomeadas do aplicativo, mapeando nomes de rotas para widgets.
      routes: {
        '/': (context) => const HomePage(),
        '/contacts': (context) => const ContactsPage(),
        '/search': (context) => const SearchPage(),
        '/info': (context) => const InfoPage(),
        '/policies':(context) => const PoliciesPage(),
      },
    );
  }
}