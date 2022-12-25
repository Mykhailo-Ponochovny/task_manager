// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:get_it/get_it.dart';
import 'package:task_manager/app/app.dart';
import 'package:task_manager/bootstrap.dart';

void main() {
  bootstrap((GetIt getIt) async {
    return App(getIt: getIt);
  });
}
