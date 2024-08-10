import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/hive_box.dart';
import '../../user_list/models/user_model.dart';

part 'add_user_bloc.freezed.dart';
part 'add_user_event.dart';
part 'add_user_state.dart';

@injectable
class AddUserBloc extends Bloc<AddUserEvent, AddUserState> {
  AddUserBloc(this._localeStorage) : super(const AddUserState()) {
    on<_OnAddUser>(_onAddUser);
  }

  final AppHiveBox _localeStorage;

  FutureOr<void> _onAddUser(
    _OnAddUser event,
    Emitter<AddUserState> emit,
  ) async {
    final user = event.user;
    await _localeStorage.addUser(user);
    final isAdded = _localeStorage.checkIfAdded(user);

    emit(
      state.copyWith(
        status: isAdded ? EnumAddUserStatus.success : EnumAddUserStatus.failure,
      ),
    );
  }
}
