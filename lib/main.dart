import 'package:flutter/material.dart';
import 'espera_page.dart';

void main() => runApp(const SimilaresApp());

class SimilaresApp extends StatelessWidget {
  const SimilaresApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Farmacias Similares',
      theme: ThemeData(
        primaryColor: const Color(0xFF03346E),
        useMaterial3: true,
      ),
      // La aplicación inicia en la pantalla de espera
      home: const PantallaEspera(),
    );
  }
}