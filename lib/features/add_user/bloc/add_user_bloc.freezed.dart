// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddUserEvent {
  UserModel get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) addUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? addUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? addUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAddUser value) addUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAddUser value)? addUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAddUser value)? addUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddUserEventCopyWith<AddUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserEventCopyWith<$Res> {
  factory $AddUserEventCopyWith(
          AddUserEvent value, $Res Function(AddUserEvent) then) =
      _$AddUserEventCopyWithImpl<$Res, AddUserEvent>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class _$AddUserEventCopyWithImpl<$Res, $Val extends AddUserEvent>
    implements $AddUserEventCopyWith<$Res> {
  _$AddUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnAddUserImplCopyWith<$Res>
    implements $AddUserEventCopyWith<$Res> {
  factory _$$OnAddUserImplCopyWith(
          _$OnAddUserImpl value, $Res Function(_$OnAddUserImpl) then) =
      __$$OnAddUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$OnAddUserImplCopyWithImpl<$Res>
    extends _$AddUserEventCopyWithImpl<$Res, _$OnAddUserImpl>
    implements _$$OnAddUserImplCopyWith<$Res> {
  __$$OnAddUserImplCopyWithImpl(
      _$OnAddUserImpl _value, $Res Function(_$OnAddUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$OnAddUserImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$OnAddUserImpl implements _OnAddUser {
  const _$OnAddUserImpl({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AddUserEvent.addUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAddUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAddUserImplCopyWith<_$OnAddUserImpl> get copyWith =>
      __$$OnAddUserImplCopyWithImpl<_$OnAddUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) addUser,
  }) {
    return addUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? addUser,
  }) {
    return addUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? addUser,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAddUser value) addUser,
  }) {
    return addUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAddUser value)? addUser,
  }) {
    return addUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAddUser value)? addUser,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(this);
    }
    return orElse();
  }
}

abstract class _OnAddUser implements AddUserEvent {
  const factory _OnAddUser({required final UserModel user}) = _$OnAddUserImpl;

  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$OnAddUserImplCopyWith<_$OnAddUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddUserState {
  EnumAddUserStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddUserStateCopyWith<AddUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserStateCopyWith<$Res> {
  factory $AddUserStateCopyWith(
          AddUserState value, $Res Function(AddUserState) then) =
      _$AddUserStateCopyWithImpl<$Res, AddUserState>;
  @useResult
  $Res call({EnumAddUserStatus status});
}

/// @nodoc
class _$AddUserStateCopyWithImpl<$Res, $Val extends AddUserState>
    implements $AddUserStateCopyWith<$Res> {
  _$AddUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EnumAddUserStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddUserStateImplCopyWith<$Res>
    implements $AddUserStateCopyWith<$Res> {
  factory _$$AddUserStateImplCopyWith(
          _$AddUserStateImpl value, $Res Function(_$AddUserStateImpl) then) =
      __$$AddUserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EnumAddUserStatus status});
}

/// @nodoc
class __$$AddUserStateImplCopyWithImpl<$Res>
    extends _$AddUserStateCopyWithImpl<$Res, _$AddUserStateImpl>
    implements _$$AddUserStateImplCopyWith<$Res> {
  __$$AddUserStateImplCopyWithImpl(
      _$AddUserStateImpl _value, $Res Function(_$AddUserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$AddUserStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EnumAddUserStatus,
    ));
  }
}

/// @nodoc

class _$AddUserStateImpl extends _AddUserState {
  const _$AddUserStateImpl({this.status = EnumAddUserStatus.init}) : super._();

  @override
  @JsonKey()
  final EnumAddUserStatus status;

  @override
  String toString() {
    return 'AddUserState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserStateImplCopyWith<_$AddUserStateImpl> get copyWith =>
      __$$AddUserStateImplCopyWithImpl<_$AddUserStateImpl>(this, _$identity);
}

abstract class _AddUserState extends AddUserState {
  const factory _AddUserState({final EnumAddUserStatus status}) =
      _$AddUserStateImpl;
  const _AddUserState._() : super._();

  @override
  EnumAddUserStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$AddUserStateImplCopyWith<_$AddUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
