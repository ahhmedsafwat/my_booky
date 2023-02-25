import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:my_bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly/Features/home/data/repos/home_repo.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeaturedBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(
        FeaturedBooksFailure(failure.errMassage),
      ),
      (books) => emit(FeaturedBooksSuccess(books)),
    );
  }
}
