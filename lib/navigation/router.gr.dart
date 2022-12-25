// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    AppSkeletonRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const AppSkeleton(),
      );
    },
    HomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    ConfigurationRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const ConfigurationScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home/',
          fullMatch: true,
        ),
        RouteConfig(
          AppSkeletonRoute.name,
          path: '/home/',
          children: [
            RouteConfig(
              HomeRoute.name,
              path: 'home-screen',
              parent: AppSkeletonRoute.name,
            ),
            RouteConfig(
              ConfigurationRoute.name,
              path: 'configuration-page',
              parent: AppSkeletonRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [AppSkeleton]
class AppSkeletonRoute extends PageRouteInfo<void> {
  const AppSkeletonRoute({List<PageRouteInfo>? children})
      : super(
          AppSkeletonRoute.name,
          path: '/home/',
          initialChildren: children,
        );

  static const String name = 'AppSkeletonRoute';
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home-screen',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [ConfigurationScreen]
class ConfigurationRoute extends PageRouteInfo<void> {
  const ConfigurationRoute()
      : super(
          ConfigurationRoute.name,
          path: 'configuration-page',
        );

  static const String name = 'ConfigurationRoute';
}
