import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:task_manager/app/view/app_skeleton.dart';
import 'package:task_manager/home/home.dart';
import 'package:task_manager/home/view/configuration_screen.dart';

part 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    RedirectRoute(path: '/', redirectTo: '/home/'),
    AutoRoute<dynamic>(
      page: AppSkeleton,
      path: '/home/',
      name: 'AppSkeletonRoute',
      children: <AutoRoute>[
        AutoRoute(
          path: 'home-screen',
          page: HomeScreen,
        ),
        AutoRoute(
          path: 'configuration-page',
          page: ConfigurationScreen,
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
