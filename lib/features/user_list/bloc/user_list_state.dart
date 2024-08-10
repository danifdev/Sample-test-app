part of 'user_list_bloc.dart';

@freezed
@immutable
class UserListState with _$UserListState {
  const factory UserListState({
    List<UserModel>? users,
  }) = _UserListState;
  const UserListState._();
}
