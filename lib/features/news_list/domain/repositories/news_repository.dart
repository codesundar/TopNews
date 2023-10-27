import 'package:dartz/dartz.dart';

import '../../../../shared/exceptions/api_failure.dart';
import '../entities/news_entity.dart';

abstract class NewsRepository {
  Future<Either<ApiFailure, NewsResponseEntity>> fetchNews({
    String? nextPage,
  });
}
