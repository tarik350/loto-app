import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/core/utils/helper/helper.dart';
import 'package:mobile_app/src/features/home/data/data_source/remote/abstract_home_remote_api.dart';
import 'package:mobile_app/src/features/home/domain/models/game/game.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';
import 'package:mobile_app/src/shared/models/paginated_response/paginated_response.dart';

class HomeRemoteApiImpl extends AbstractHomeRemoteApi {
  final Dio publicApi;
  final Dio privateApi;

  HomeRemoteApiImpl({
    required this.privateApi,
    required this.publicApi,
  });
  @override
  Future<Either<AppException, ApiResponse<PaginatedResponse<Game>>>>
      getAllCashGames() async {
    try {
      final response = await publicApi.get('/games/category');

      final paginatedGames =
          Helper.handleSuccessResponse<PaginatedResponse<Game>>(response, 200,
              fromTJson: (json) => PaginatedResponse<Game>.fromJson(
                  json as Map<String, dynamic>,
                  (gameJson) =>
                      Game.fromJson(gameJson as Map<String, dynamic>)));
      return paginatedGames;
    } catch (e) {
      return left(UnexpectedException(error: e));
    }
  }

  @override
  Future<Either<AppException, ApiResponse<List<GameCategory>>>>
      getAllGameCateories() {
    // TODO: implement getAllGameCateories
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, ApiResponse<List<Game>>>> getAllGamesForCategory(
      int categoryId) {
    // TODO: implement getAllGamesForCategory
    throw UnimplementedError();
  }
}
