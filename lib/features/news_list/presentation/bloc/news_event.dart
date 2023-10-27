part of 'news_bloc.dart';

abstract class NewsEvent extends Equatable {
  const NewsEvent();
}

class NewsFetchMoreEvent extends NewsEvent {
  const NewsFetchMoreEvent({
    this.nextPage,
  });
  final String? nextPage;

  @override
  List<Object?> get props => <Object>[];
}
