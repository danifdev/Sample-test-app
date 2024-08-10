import 'package:auto_route/auto_route.dart';

import '../../features/add_user/add_user_page.dart';
import '../../features/user_list/user_list_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()

/// Project router information class
final class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: UserListRoute.page,
          initial: true,
        ),
        CustomRoute(
          page: AddUserRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
      ];
}
