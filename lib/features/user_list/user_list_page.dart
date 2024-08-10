import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../product/navigation/app_router.dart';
import '../../product/theme/common_styles.dart';
import 'bloc/user_list_bloc.dart';

@RoutePage()
class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User list'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushRoute(const AddUserRoute()),
        child: const Icon(Icons.person_add),
      ),
      body: BlocBuilder<UserListBloc, UserListState>(
        builder: (context, state) {
          final users = state.users;
          if (users?.isEmpty ?? false) {
            return const Center(
              child: Text('There is no more users yet....'),
            );
          }
          return Padding(
            padding: AppCommonStyles.paddingNormal,
            child: ListView.separated(
              itemCount: users?.length ?? 0,
              separatorBuilder: (context, index) => const SizedBox(
                height: 12,
              ),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final user = users?[index];
                return Card(
                  child: ListTile(
                    leading: Text('${index + 1}'),
                    title: Text(
                      user?.name ?? '',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Age : ${user?.age}'),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
