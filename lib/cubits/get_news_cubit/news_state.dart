part of 'news_cubit.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}

class NewsLoading extends NewsState {}

class NewsSuccess extends NewsState {}

class NewsFailure extends NewsState {
  final String errorMessage;

  NewsFailure({required this.errorMessage});
}
