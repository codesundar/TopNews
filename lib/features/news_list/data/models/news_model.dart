import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:topnews/config/app_config.dart';
import 'package:topnews/features/news_list/domain/entities/news_entity.dart';
part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsResponseModel with _$NewsResponseModel {
  const factory NewsResponseModel({
    @JsonKey(name: 'nextPage') String? nextPage,
    @JsonKey(name: 'results', defaultValue: []) required List<NewsItem> items,
  }) = _NewsResponseModel;

  const NewsResponseModel._();

  NewsResponseEntity toEntity() => NewsResponseEntity(
        items: items.map((e) => e.toEntity()).toList(),
        nextPage: nextPage,
      );

  factory NewsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseModelFromJson(json);
}

@freezed
class NewsItem with _$NewsItem {
  const factory NewsItem({
    @JsonKey(name: 'article_id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'image_url') String? imageURL,
    @JsonKey(name: 'link') String? link,
  }) = _NewsItem;

  const NewsItem._();

  NewsEntity toEntity() => NewsEntity(
        id: id ?? '',
        title: title ?? '',
        description: description ?? '',
        imageURL: imageURL ?? AppConfig.imagePlaceholder,
      );

  factory NewsItem.fromJson(Map<String, dynamic> json) =>
      _$NewsItemFromJson(json);
}
