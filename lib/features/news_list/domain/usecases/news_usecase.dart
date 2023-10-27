import 'package:dartz/dartz.dart';

import '../../../../shared/exceptions/api_failure.dart';
import '../entities/news_entity.dart';
import '../repositories/news_repository.dart';

class NewsUseCase {
  final NewsRepository repository;
  NewsUseCase({
    required this.repository,
  });

  Future<Either<ApiFailure, NewsResponseEntity>> execute({
    String? nextPage,
  }) async {
    return repository.fetchNews(nextPage: nextPage);
  }
}
