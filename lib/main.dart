import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/core/routing/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/di/injection.dart';
import 'features/auth/cubit/auth_cubit.dart';
import 'features/auth/repo/firebase_user.dart';

const _appName = 'Coderbyte Technical Assessment';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();
  Hive.registerAdapter(FirebaseUserAdapter());
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<AuthCubit>()..checkIfUserIsSignedIn(),
      child: MaterialApp.router(
        title: _appName,
        routerConfig: _appRouter.config(),
        theme: ThemeData(primarySwatch: Colors.purple),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
