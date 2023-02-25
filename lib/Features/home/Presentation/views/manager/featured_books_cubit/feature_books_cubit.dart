import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:my_bookly/Features/home/data/models/book_model/book_model.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeaturedBooksState> {
  FeatureBooksCubit() : super(FeatureBooksInitial());
}
