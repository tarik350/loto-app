import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
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
  Future<Either<Exception, ApiResponse<List<GameCategory>>>>
      getAllGamesWithCategory() async {
    throw UnimplementedError();
  }
}
