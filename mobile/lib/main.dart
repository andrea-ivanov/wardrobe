import 'package:flutter/material.dart';

void main() {
  // Aquí inicializaremos la Inyección de Dependencias más adelante
  runApp(const ArmarioVirtualApp());
}

class ArmarioVirtualApp extends StatelessWidget {
  const ArmarioVirtualApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Armario Virtual AI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(child: Text('Armario Virtual AI - Inicializado')),
      ),
    );
  }
}
