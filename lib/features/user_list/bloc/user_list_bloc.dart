import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/hive_box.dart';
import '../models/user_model.dart';

part 'user_list_bloc.freezed.dart';
part 'user_list_event.dart';
part 'user_list_state.dart';

@injectable
class UserListBloc extends Bloc<UserListEvent, UserListState> {
  UserListBloc(this._localeStorage) : super(const UserListState()) {
    on<GetUserListEvent>(_onGetUserList);
  }

  final AppHiveBox _localeStorage;

  FutureOr<void> _onGetUserList(
    GetUserListEvent event,
    Emitter<UserListState> emit,
  ) {
    final users = _localeStorage.getUsers();

    emit(state.copyWith(users: users));
  }
}
