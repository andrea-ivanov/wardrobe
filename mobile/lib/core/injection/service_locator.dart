import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  // Aquí registraremos nuestras dependencias (casos de uso, repositorios, etc.)
  // Ejemplo: locator.registerLazySingleton(() => MiRepositorio());
}
