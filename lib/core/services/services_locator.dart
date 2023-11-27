
import 'package:get_it/get_it.dart';

import '../../features/login/data/datasources/network/user_remote_data_source.dart';
import '../../features/login/data/repositories/user_repertory.dart';
import '../../features/login/domain/repositories/base_user_repositories.dart';
import '../../features/login/domain/usecases/login_use_case.dart';
import '../../features/login/presentation/manager/cubit/login_cubit.dart';

    final sl = GetIt.instance;
class ServicesLocator {
  void init(){
    /// BLOC
  sl.registerFactory(() => LoginCubit(loginUseCase:sl() ));

    /////UseCase
    sl.registerLazySingleton(() =>LoginUseCase(sl()));


     // Repository
     sl.registerLazySingleton<BaseUserRepository>(() =>UserRepertory(sl()) );
    //Data Source
    sl.registerLazySingleton<BaseLoginRemoteDataSource>(() =>UserRemoteDataSource () );

  }
}