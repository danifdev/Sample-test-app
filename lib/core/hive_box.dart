// ignore_for_file: unnecessary_await_in_return

// Package imports:
import 'dart:async';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../features/user_list/models/user_model.dart';
import 'constants.dart';

abstract class AppHiveBox {
  Future<void> addUser(UserModel user);
  bool checkIfAdded(UserModel user);
  List<UserModel> getUsers();

  Future<void> reset();
}

@Singleton(as: AppHiveBox)
class AppHiveBoxImpl extends AppHiveBox {
  AppHiveBoxImpl(@Named(GetItNamedInstances.userHiveBox) this.box);
  final Box<UserModel> box;

  @override
  Future<void> reset() async {
    await box.clear();
  }

  @override
  Future<void> addUser(UserModel user) async {
    await box.put(user.id, user);
  }

  @override
  List<UserModel> getUsers() {
    return box.values.toList();
  }

  @override
  bool checkIfAdded(UserModel user) {
    final users = box.values.toList();

    return users.contains(user);
  }
}
