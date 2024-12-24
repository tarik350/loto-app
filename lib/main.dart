import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/router/app_route.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/game/presentation/bloc/game_bloc.dart';
import 'package:mobile_app/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:mobile_app/src/features/auth/login/presentation/bloc/login_bloc.dart';
import 'package:mobile_app/src/features/auth/register/presentation/bloc/register_bloc.dart';
import 'package:mobile_app/src/features/auth/auth_page_wrapper/presentation/cubit/auth_page_wrapper_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await initInjection();

  runApp(EasyLocalization(
      supportedLocales: const [Locale('am', 'ET'), Locale('en', 'US')],
      path: 'assets/translations',
      saveLocale: true,
      startLocale: const Locale('am', 'ET'),
      fallbackLocale: const Locale('en', 'US'),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<RegisterBloc>()),
        BlocProvider(create: (_) => sl<LoginBloc>()),
        BlocProvider(
          create: (_) => sl<HomeBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<GameBloc>(),
        ),
        BlocProvider(
          create: (context) => AuthPageWrapperCubit(),
        )
      ],
      child: MaterialApp(
        key: UniqueKey(),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: const [Locale('en', 'US'), Locale('am', 'ET')],
        locale: const Locale('am', 'ET'),
        theme: ThemeData(fontFamily: "Mulish"),
        home: ScreenUtilInit(
            designSize: const Size(360, 800),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return MaterialApp.router(
                routerConfig: _appRouter.config(),
                debugShowCheckedModeBanner: false,
              );
            }),
      ),
    );
  }
}
