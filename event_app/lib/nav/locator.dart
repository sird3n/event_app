import 'package:get_it/get_it.dart';
import '../app_state/state_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import '../firebase_options.dart';


// This class sets up a dependency injection container
// using the 'GetIt' package. It provides a way to
// register and access dependencies for the application.

// Create an instance of the 'GetIt' container to manage dependencies.
GetIt locator = GetIt.instance;

// The 'setup' function initializes the dependency container.
Future<void> setup() async {

  // Register the 'StateRepository' as a lazy singleton.
  // This ensures that there's only one instance of 'StateRepository'
  // throughout the application, making it accessible to other parts
  // of the code.

  //Repositories
  locator.registerLazySingleton(() => StateRepository());

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

}