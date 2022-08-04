import 'package:beamer/beamer.dart';
import 'package:conservation_project/screens/animal_screen.dart';
import 'package:conservation_project/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

Future main() async {
  await DotEnv.load(fileName: '.env');
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(routes: {
      '/': (context, state, data) => HomeScreen(),
      '/animal': (context, state, data) => AnimalScreen(),
    }),
  );

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
    );
  }
}
