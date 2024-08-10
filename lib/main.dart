import 'package:flutter/material.dart';
import 'app/app_init.dart';
import 'app/user_list_app.dart';

void main() async {
  await ApplicationInitialize().make();
  final app = await UserListApp.create();
  runApp(app);
}
