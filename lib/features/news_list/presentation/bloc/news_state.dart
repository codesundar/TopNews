part of 'news_bloc.dart';

class NewsState extends BaseState {
  const NewsState({
    this.isLoading = false,
    this.errorMessage = '',
    this.items = const <NewsEntity>[],
    this.nextPage,
    this.lifeTimeNewsCount = 0,
  });

  final bool isLoading;
  final String errorMessage;
  final List<NewsEntity> items;
  final String? nextPage;
  final int lifeTimeNewsCount;

  @override
  NewsState copyWith({
    final bool? isLoading,
    final String? errorMessage,
    final List<NewsEntity>? items,
    final String? nextPage,
    final int? lifeTimeNewsCount,
  }) {
    return NewsState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      items: items ?? this.items,
      nextPage: nextPage,
      lifeTimeNewsCount: lifeTimeNewsCount ?? 0,
    );
  }

  @override
  List<Object> get props => <Object>[
        isLoading,
        errorMessage,
        items,
        nextPage ?? '',
      ];
}
