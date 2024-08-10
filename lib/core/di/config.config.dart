// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive/hive.dart' as _i979;
import 'package:injectable/injectable.dart' as _i526;
import 'package:user_list_app/core/di/config_storage.dart' as _i457;
import 'package:user_list_app/core/hive_box.dart' as _i630;
import 'package:user_list_app/features/add_user/bloc/add_user_bloc.dart'
    as _i82;
import 'package:user_list_app/features/user_list/bloc/user_list_bloc.dart'
    as _i98;
import 'package:user_list_app/features/user_list/models/user_model.dart'
    as _i785;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.singletonAsync<_i979.Box<_i785.UserModel>>(
      () => registerModule.userHiveBox,
      instanceName: 'user_box',
      preResolve: true,
    );
    gh.singleton<_i630.AppHiveBox>(() => _i630.AppHiveBoxImpl(
        gh<_i979.Box<_i785.UserModel>>(instanceName: 'user_box')));
    gh.factory<_i82.AddUserBloc>(
        () => _i82.AddUserBloc(gh<_i630.AppHiveBox>()));
    gh.factory<_i98.UserListBloc>(
        () => _i98.UserListBloc(gh<_i630.AppHiveBox>()));
    return this;
  }
}

class _$RegisterModule extends _i457.RegisterModule {}
