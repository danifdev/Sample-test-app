part of 'user_list_bloc.dart';

@immutable
sealed class UserListEvent {}

final class GetUserListEvent extends UserListEvent {}
