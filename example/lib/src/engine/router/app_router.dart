import 'package:auto_route/auto_route.dart';
import 'package:example/src/engine/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: BookListRoute.page,
          initial: true,
        ),
        AutoRoute(page: BookDetailsRoute.page),
      ];
}
