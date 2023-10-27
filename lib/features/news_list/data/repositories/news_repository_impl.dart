import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../shared/exceptions/api_failure.dart';
import '../../domain/entities/news_entity.dart';
import '../../domain/repositories/news_repository.dart';
import '../datasources/news_repository_remote_source_impl.dart';

class NewsRepositoryImpl implements NewsRepository {
  NewsRepositoryImpl({
    required this.remoteDatasource,
  });

  final NewsRemoteDatasource remoteDatasource;

  @override
  Future<Either<ApiFailure, NewsResponseEntity>> fetchNews({
    String? nextPage,
  }) async {
    try {
      final resp = await remoteDatasource.fetchNews(nextPage: nextPage);
      return Right(resp);
    } on DioException catch (e) {
      return Left(ApiFailure(message: e.message!));
    }
  }
}
