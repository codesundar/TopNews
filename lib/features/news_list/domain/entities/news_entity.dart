import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_entity.freezed.dart';

@freezed
class NewsResponseEntity with _$NewsResponseEntity {
  const factory NewsResponseEntity({
    required String? nextPage,
    required List<NewsEntity> items,
  }) = _NewsResponseEntity;
  const NewsResponseEntity._();
}

@freezed
class NewsEntity with _$NewsEntity {
  const factory NewsEntity({
    required String title,
    required String description,
    required String imageURL,
    required String id,
  }) = _NewsEntity;
  const NewsEntity._();
}
