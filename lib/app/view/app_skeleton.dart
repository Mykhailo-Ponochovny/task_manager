import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/navigation/router.dart';

class AppSkeleton extends StatefulWidget {
  const AppSkeleton({super.key});

  @override
  State<AppSkeleton> createState() => _AppSkeletonState();
}

class _AppSkeletonState extends State<AppSkeleton> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [HomeRoute(), ConfigurationRoute()],
      builder: (context, child, controller) {
        return Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              controller: controller,
              tabs: const [
                Tab(
                  text: 'Processes',
                ),
                Tab(
                  text: 'Configuration',
                ),
              ],
            ),
          ),
          body: child,
        );
      },
    );
  }
}
