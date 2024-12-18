import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/core/utils/helper/helper.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/home/data/data_source/remote/abstract_home_remote_api.dart';
import 'package:mobile_app/src/features/home/domain/models/game/game.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';
import 'package:mobile_app/src/features/home/presentation/bloc/home_bloc.dart';
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
      getAllCashGames({int? categoryId}) async {
    try {
      final id = sl<HomeBloc>().state.categoryId;
      final response = await publicApi.get('games', data: {'categoryId': id});

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
      getAllGameCateories() async {
    try {
      final Response response = await publicApi.get('game-categories');
      return Helper.handleSuccessResponse<List<GameCategory>>(response, 200,
          fromTJson: (json) => (json as List<dynamic>)
              .map(
                  (json) => GameCategory.fromJson(json as Map<String, dynamic>))
              .toList());
    } catch (e) {
      return left(UnexpectedException(error: e));
    }
  }

  @override
  Future<Either<AppException, ApiResponse<List<Game>>>>
      filterGamesWithGameCategory(int categoryId) async {
    throw UnimplementedError();
    // try {
    //   final response = await publicApi.get(path)
    // } catch (e) {

    // }
  }
}
