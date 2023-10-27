import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/app_strings.dart';
import '../bloc/news_bloc.dart';
import '../widgets/error_message_widget.dart';
import '../widgets/news_item.dart';

class NewsList extends StatefulWidget {
  const NewsList({super.key});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  _onScroll() {
    final nextPage = context.read<NewsBloc>().state.nextPage;
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        nextPage != null) {
      context.read<NewsBloc>().add(NewsFetchMoreEvent(nextPage: nextPage));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 32, 105),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(AppStrings.appName),
            BlocBuilder<NewsBloc, NewsState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child:
                      Text(' - Total: ${state.lifeTimeNewsCount.toString()}'),
                );
              },
            )
          ],
        ),
      ),
      body: BlocBuilder<NewsBloc, NewsState>(
        bloc: context.read<NewsBloc>()
          ..add(const NewsFetchMoreEvent(nextPage: '')),
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.errorMessage.isNotEmpty) {
            return ErrorMessageWidget(
              message: state.errorMessage,
            );
          }
          return ListView.builder(
            itemCount: state.items.length,
            controller: _scrollController,
            addAutomaticKeepAlives: true,
            itemBuilder: (context, index) {
              final news = state.items[index];
              return NewsTile(
                key: Key(news.id),
                id: news.id,
                title: news.title,
                description: news.description,
                imageUrl: news.imageURL,
              );
            },
          );
        },
      ),
    );
  }
}
