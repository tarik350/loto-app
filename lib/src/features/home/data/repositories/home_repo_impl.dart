import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/core/exceptions/failures.dart';
import 'package:mobile_app/src/core/network/error/dio_error_handler.dart';
import 'package:mobile_app/src/features/home/data/data_source/remote/abstract_home_remote_api.dart';
import 'package:mobile_app/src/features/home/domain/models/game/game.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';
import 'package:mobile_app/src/features/home/domain/repositories/abstract_home_repository.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';
import 'package:mobile_app/src/shared/models/paginated_response/paginated_response.dart';

class HomeRepoImpl extends AbstractHomeRepository {
  final AbstractHomeRemoteApi remoteApi;
  HomeRepoImpl(this.remoteApi);
  @override
  Future<Either<AppFailure, PaginatedResponse<Game>>> getAllCashGames(
      {int? categoryId}) async {
    try {
      final response = await remoteApi.getAllCashGames(categoryId: categoryId);
      return response.fold(
        (AppException exception) => mapExceptionToFailure(exception),
        (ApiResponse<PaginatedResponse<Game>> response) =>
            right(response.data!),
      );
    } catch (e) {
      return left(UnexpectedFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, List<GameCategory>>> getAllGameCateories() async {
    final categories = await remoteApi.getAllGameCateories();
    return categories.fold((exception) => mapExceptionToFailure(exception),
        (categories) => right(categories.data as List<GameCategory>));
  }
}
