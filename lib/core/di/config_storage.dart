import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import '../../features/user_list/models/user_model.dart';
import '../constants.dart';

@module
abstract class RegisterModule {
  @preResolve
  @singleton
  @Named(GetItNamedInstances.userHiveBox)
  Future<Box<UserModel>> get userHiveBox async {
    final directory = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    return Hive.openBox(HiveBoxes.userHiveBox);
  }
}
