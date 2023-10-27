import 'package:dio/dio.dart';

import '../../../../config/app_config.dart';
import '../../domain/entities/news_entity.dart';
import '../models/news_model.dart';

abstract class NewsRemoteDatasource {
  Future<NewsResponseEntity> fetchNews({
    String? nextPage,
  });
}

class NewsRemoteDatasourceImpl implements NewsRemoteDatasource {
  @override
  Future<NewsResponseEntity> fetchNews({
    String? nextPage,
  }) async {
    try {
      final nextPageUrl = nextPage != null ? '&page=$nextPage' : '';

      final requestUrl = '${AppConfig.apiURL}$nextPageUrl';

      final resp = await Dio().get(requestUrl);
      final items = NewsResponseModel.fromJson(resp.data).toEntity();

      return items;
    } catch (e) {
      rethrow;
    }
  }
}
