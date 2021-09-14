import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/di/injection.dart';
import 'core/routing/router.gr.dart' as router;
import 'features/auth/cubit/auth_cubit.dart';
import 'features/auth/repo/firebase_user.dart';

const _appName = 'Coderbyte Technical Assessment';
final _appRouter = router.Router();

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();
  Hive.registerAdapter(FirebaseUserAdapter());
  configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<AuthCubit>()..checkIfUserIsSignedIn(),
      child: MaterialApp.router(
        title: _appName,
        routerDelegate: _appRouter.delegate(),
        theme: ThemeData(primarySwatch: Colors.purple),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
