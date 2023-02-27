part of 'similar_books_cubit.dart';

abstract class similarBooksState extends Equatable {
  const similarBooksState();

  @override
  List<Object> get props => [];
}

class similarBooksInitial extends similarBooksState {}

class similarBooksSuccess extends similarBooksState {
  final List<BookModel> book;

  const similarBooksSuccess(this.book);
}

class similarBooksFailure extends similarBooksState {
  final String errMessage;

  const similarBooksFailure(this.errMessage);
}

class similarBooksLoading extends similarBooksState {}
