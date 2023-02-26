import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_bookly/Features/home/data/repos/home_repo_implementation.dart';
import 'package:my_bookly/core/utils/api_service.dart';

final GetIt getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(ApiService(Dio())));
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
}
