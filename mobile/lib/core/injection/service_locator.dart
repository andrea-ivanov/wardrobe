import 'package:get_it/get_it.dart';

/// Instancia global de get_it para usar en toda la aplicación.
final locator = GetIt.instance;

/// Esta función será llamada antes de [runApp] para registrar todas
/// las dependencias que necesitará la aplicación (repositorios, 
/// servicios de base de datos, utilidades, etc.).
Future<void> setupLocator() async {
  // Aquí registraremos nuestras dependencias.
  // Ejemplo:
  // locator.registerLazySingleton<DatabaseService>(() => DatabaseServiceImpl());
  
  // Por ahora está vacío, pero prepararemos esta caja para el siguiente paso
  // que es la Base de Datos (Hive/Isar).
}
