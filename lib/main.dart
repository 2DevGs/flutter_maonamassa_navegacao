import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/core/navigator_observer_custom.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe2_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 82, 28, 175)),
        useMaterial3: true,
      ),
      navigatorObservers: [
        NavigatorObserverCustom(),
      ],
        onGenerateRoute: (RouteSettings settings) {
          if(settings.name == '/') {
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => HomePage(),
            );
          }
          if(settings.name == '/detalhe') {
            final parametro = settings.arguments as String?;
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => DetalhePage(
                parametro: parametro ?? 'Não foi enviado o parametro',
              ),
            );
          }
        },

      routes: {
        '/': (_) => HomePage(),
        '/detalhe2': (_) => Detalhe2Page(),
      },
    );
  }
}

