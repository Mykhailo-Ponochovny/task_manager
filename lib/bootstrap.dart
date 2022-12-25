// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:task_manager/injections/injection.dart';
import 'package:task_manager/navigation/router.dart';

Future<void> bootstrap(FutureOr<Widget> Function(GetIt getIt) builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  final getIt = GetIt.asNewInstance()..registerSingleton(AppRouter());

  configureDependencies(getIt);

  await runZonedGuarded(
    () async {
      await BlocOverrides.runZoned(
        () async => runApp(await builder(getIt)),
      );
    },
    (Object error, StackTrace stackTrace) =>
        log(error.toString(), stackTrace: stackTrace),
  );
}
