import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/feature_list_view.dart';
import 'package:my_bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly/Features/home/data/repos/home_repo.dart';
import 'package:my_bookly/core/errors/failures.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<similarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(similarBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(similarBooksLoading());

    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) => emit(similarBooksFailure(failure.errMassage)),
        (books) => emit(similarBooksSuccess(books)));
  }
}
