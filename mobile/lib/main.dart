import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:wardrobe/core/injection/service_locator.dart';

Future<void> main() async {
  // Aseguramos que Flutter esté inicializado antes de ejecutar código asíncrono
  WidgetsFlutterBinding.ensureInitialized();
  
  // Inicializamos la Inyección de Dependencias
  await setupLocator();
  
  runApp(
    const ProviderScope(
      child: ArmarioVirtualApp(),
    ),
  );
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
