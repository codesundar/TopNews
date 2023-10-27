import 'package:get_it/get_it.dart';
import 'package:topnews/features/news_list/data/datasources/news_repository_remote_source_impl.dart';
import 'package:topnews/features/news_list/data/repositories/news_repository_impl.dart';
import 'package:topnews/features/news_list/domain/repositories/news_repository.dart';
import 'package:topnews/features/news_list/domain/usecases/news_usecase.dart';
import 'package:topnews/features/news_list/presentation/bloc/news_bloc.dart';

final GetIt locator = GetIt.instance;

void init() async {
  locator.registerLazySingleton<NewsBloc>(
    () => NewsBloc(
      useCase: locator<NewsUseCase>(),
    ),
  );
  locator.registerLazySingleton<NewsRemoteDatasource>(
    () => NewsRemoteDatasourceImpl(),
  );
  locator.registerLazySingleton<NewsRepository>(
    () => NewsRepositoryImpl(
      remoteDatasource: locator<NewsRemoteDatasource>(),
    ),
  );
  locator.registerLazySingleton<NewsUseCase>(
    () => NewsUseCase(
      repository: locator<NewsRepository>(),
    ),
  );
}
