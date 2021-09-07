import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/di/injection.dart';
import 'core/routing/router.gr.dart' as router;

const _appName = 'Coderbyte Technical Assessment';
final _appRouter = router.Router();

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: _appName,
      routerDelegate: _appRouter.delegate(),
      theme: ThemeData(primarySwatch: Colors.purple),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
