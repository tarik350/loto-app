import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/core/utils/helper/helper.dart';
import 'package:mobile_app/src/features/home/data/data_source/remote/abstract_home_remote_api.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';

class HomeRemoteApiImpl extends AbstractHomeRemoteApi {
  final Dio publicApi;
  final Dio privateApi;

  HomeRemoteApiImpl({
    required this.privateApi,
    required this.publicApi,
  });
  @override
  Future<Either<AppException, ApiResponse<List<GameCategory>>>>
      getAllGamesWithCategory() async {
    try {
      final response = await publicApi.get('/games/category');
      return Helper.handleSuccessResponse<List<GameCategory>>(
        response, 200,
        // fromTJson: (json) => PaginatedResponse<Game>.fromJson(
        //     json as Map<String, dynamic>,
        //     (gameJson) => Game.fromJson(gameJson as Map<String, dynamic>))

        fromTJson: (Object? json) => (json as List<dynamic>)
            .map((e) => GameCategory.fromJson(
                  e as Map<String, dynamic>,
                  // (gameJson) => (gameJson as List<dynamic>)
                  //     .map((g) => Game.fromJson(g as Map<String, dynamic>))
                  //     .toList(),
                ))
            .toList(),
      );
    } catch (e) {
      return left(UnexpectedException(error: e));
    }
  }
}


//get all games paginated 
  //of type cash
  //if goods selected of type good
//get games of a particular game category paginated 
//fetch game categories -> categories need to have icons