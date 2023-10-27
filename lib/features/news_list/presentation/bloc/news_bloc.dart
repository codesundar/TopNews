import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../shared/exceptions/api_failure.dart';
import '../../../../shared/extension/base_state.dart';
import '../../domain/entities/news_entity.dart';
import '../../domain/usecases/news_usecase.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsUseCase useCase;
  NewsBloc({
    required this.useCase,
  }) : super(const NewsState()) {
    on<NewsEvent>(
      _mapEventToState,
    );
  }

  Future<void> _mapEventToState(
    NewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    final pref = await SharedPreferences.getInstance();
    final currentCount = pref.getInt('totalNewsCount') ?? 0;

    if (event is NewsFetchMoreEvent) {
      Either<ApiFailure, NewsResponseEntity> res =
          await useCase.execute(nextPage: state.nextPage);

      res.fold((ApiFailure failure) {
        emit(state.copyWith(
          isLoading: false,
          errorMessage: failure.message,
          lifeTimeNewsCount: currentCount,
        ));
      }, (NewsResponseEntity resp) {
        final totalCount = currentCount + resp.items.length;
        pref.setInt('totalNewsCount', totalCount);

        emit(state.copyWith(
          isLoading: false,
          items: state.items + resp.items,
          nextPage: resp.nextPage,
          errorMessage: '',
          lifeTimeNewsCount: totalCount,
        ));
      });
    }
  }
}
