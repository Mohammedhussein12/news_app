import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import '../../models/articles_model.dart';
import '../../services/news_service.dart';
part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());
  List<ArticleModel> articles = [];

  void getNews({required String category}) async {
    emit(NewsLoading());
    try {
      articles = await NewsService(Dio()).getTopHeadlines(category: category);
      emit(NewsSuccess());
    } on Exception catch (e) {
      emit(NewsFailure(errorMessage: e.toString()));
    }
  }
}
