import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubits/get_news_cubit/news_cubit.dart';
import 'package:news_app/widgets/news_list_view.dart';
import '../models/articles_model.dart';

class NewsListViewBuilder extends StatelessWidget {
  const NewsListViewBuilder({
    super.key,
    required this.category,
  });

  final String category;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NewsCubit>(context).getNews(category: category);
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        if (state is NewsLoading) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is NewsFailure) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(state.errorMessage),
            ),
          );
        } else {
          List<ArticleModel> articles =
              BlocProvider.of<NewsCubit>(context).articles;
          return NewsListView(articles: articles);
        }
      },
    );
  }
}
