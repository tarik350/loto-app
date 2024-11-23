import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/auth/data/data_source%20/local/abstract_auth_local_api.dart';
import 'package:mobile_app/src/features/home/presentation/bloc/home_bloc.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = sl<AbstractAuthLocalApi>().getUserModel();
    return Scaffold(
      body: BlocProvider(
        create: (context) => HomeBloc(sl()),
        child: SafeArea(
            child: Center(child: Text('welcome home ${user?.fullName}'))),
      ),
    );
  }
}
