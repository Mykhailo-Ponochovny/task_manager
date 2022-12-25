// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:task_manager/home/bloc/index.dart';
import 'package:task_manager/navigation/router.dart';

class App extends StatefulWidget {
  const App({super.key, required this.getIt});
  final GetIt getIt;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final router = widget.getIt.get<AppRouter>();
    return ProviderScope(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context) => HomeBloc()),
        ],
        child: MaterialApp.router(
          theme: ThemeData(
            appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
            colorScheme: ColorScheme.fromSwatch(
              accentColor: const Color(0xFF13B9FF),
            ),
          ),
          routerDelegate: router.delegate(),
          routeInformationParser: router.defaultRouteParser(),
        ),
      ),
    );
  }
}
