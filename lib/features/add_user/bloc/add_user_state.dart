part of 'add_user_bloc.dart';

@freezed
@immutable
class AddUserState with _$AddUserState {
  const factory AddUserState({
    @Default(EnumAddUserStatus.init) EnumAddUserStatus status,
  }) = _AddUserState;
  const AddUserState._();
}

enum EnumAddUserStatus { init, success, failure }
