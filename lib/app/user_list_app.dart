import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/di/di_instance.dart';
import '../features/user_list/bloc/user_list_bloc.dart';
import '../product/navigation/app_router.dart';
import '../product/theme/custom_dark_theme.dart';
import '../product/theme/custom_light_theme.dart';

/// Init app
class UserListApp extends StatefulWidget {
  /// Init app
  const UserListApp({super.key});

  static Future<Widget> create() async {
    await getIt.allReady();

    return const UserListApp();
  }

  static final _appRouter = AppRouter();

  @override
  State<UserListApp> createState() => _UserListAppState();
}

class _UserListAppState extends State<UserListApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<UserListBloc>()
            ..add(
              GetUserListEvent(),
            ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: UserListApp._appRouter.config(),
        locale: const Locale('en'),
        debugShowCheckedModeBanner: false,
        theme: CustomLightTheme().themeData,
        darkTheme: CustomDarkTheme().themeData,
      ),
    );
  }
}
