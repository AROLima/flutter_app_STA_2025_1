library;

/// Configurações do aplicativo
///     Altere as configurações atuais e adicione novas se precisar

class Config {

  // Nome do Aplicativo
  static const String appName = "Fluttinho";
  static const String copyright = "© 2025 Joca da Silva";

  // Regex para validar e-mails.
  //    Essa é a Regex padrão do HTML5
  static final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9.!#$%&*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?)*$',
  );

  /// Endereço da API
  // - Para API local na versão Web ou Windows, use "http://localhost:8080", por exemplo
  // - Para usar API local no emulador Android, use "http://10.0.2.2:8080", por exemplo
  // - Para API na Web, use o endereço desta "https://api.meusite.com", por exemplo
  static const String apiBaseUrl = "http://localhost:8080";

  static const Map<String, dynamic> endPoint = {
    // Lista todos os itens com 'status=ON' e ordenados por 'created_at'
    'listAll': '$apiBaseUrl/items?status=ON&_sort=created_at',
    // Lista um livro com 'status=ON' pelo Id
    //    Lembre-se que isso retorna um List<Map> em vez de um Map!
    'listOne': '$apiBaseUrl/items?status=ON&id=',
    // Envia um contato (POST)
    'contact': '$apiBaseUrl/contacts',
  };

}