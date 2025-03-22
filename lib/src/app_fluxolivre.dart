//import 'package:app_fluxolivrep/src/pages/cadastro_page.dart';
import 'package:flutter/material.dart';
import 'package:projetofluxo/src/pages/cadastro_page.dart';
import 'package:projetofluxo/src/pages/home_page.dart';
import 'package:projetofluxo/src/pages/login_page.dart';



class AppFluxolivre extends StatelessWidget {
  const AppFluxolivre({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppFluxoLivre',
      routes: {
        '/': (_) => LoginPage(),
        '/home': (_) => HomePage(),
        '/cadastro': (_) => CadastroScreen(),

      },
    );
  }
}