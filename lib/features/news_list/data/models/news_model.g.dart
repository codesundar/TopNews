// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsResponseModelImpl _$$NewsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsResponseModelImpl(
      nextPage: json['nextPage'] as String?,
      items: (json['results'] as List<dynamic>?)
              ?.map((e) => NewsItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$NewsResponseModelImplToJson(
        _$NewsResponseModelImpl instance) =>
    <String, dynamic>{
      'nextPage': instance.nextPage,
      'results': instance.items,
    };

_$NewsItemImpl _$$NewsItemImplFromJson(Map<String, dynamic> json) =>
    _$NewsItemImpl(
      id: json['article_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      imageURL: json['image_url'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$NewsItemImplToJson(_$NewsItemImpl instance) =>
    <String, dynamic>{
      'article_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image_url': instance.imageURL,
      'link': instance.link,
    };
