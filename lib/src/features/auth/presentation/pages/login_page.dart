import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_app/src/core/router/app_route.gr.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/auth/domain/models/user/user.dart';
import 'package:mobile_app/src/features/auth/presentation/bloc/auth_bloc.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  late TextEditingController phone = TextEditingController();
  late TextEditingController password = TextEditingController();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => AuthBloc(sl()),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: phone,
                decoration: const InputDecoration(
                    hintText: 'phone',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.red, width: 2))),
              ),
              TextField(
                controller: password,
                decoration: const InputDecoration(
                    hintText: 'password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.red, width: 2))),
              ),
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  // Centralize Toast display logic for reuse
                  void showToast(String message, Color backgroundColor) {
                    Fluttertoast.showToast(
                      msg: message,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: backgroundColor,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  }

                  switch (state) {
                    case AuthErrorState(:final String message):
                      showToast('Some error occurred: $message', Colors.red);
                      break;

                    case AuthSuccessState(:final User user):
                      showToast('Successfully logged in as ${user.fullName}',
                          Colors.green);
                      context.router.push(const HomeRoute());
                      break;

                    default:
                      // Handle other cases if necessary
                      break;
                  }
                },
                builder: (context, state) {
                  Widget buildAuthButton() {
                    switch (state) {
                      case AuthLoadingState():
                        return const Text('Loading...');
                      case AuthErrorState():
                        return const Text('Error occurred');
                      default:
                        return const Text("Login");
                    }
                  }

                  Widget buildFeedbackMessage() {
                    switch (state) {
                      case AuthErrorState(:final String message):
                        return Text('Some error occurred: $message');
                      case AuthSuccessState(:final User user):
                        return Text('Welcome back, ${user.fullName}');
                      default:
                        return Container();
                    }
                  }

                  return Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context.read<AuthBloc>().add(
                                AuthEvent.login(
                                  phone: phone.text,
                                  password: password.text,
                                ),
                              );
                        },
                        child: buildAuthButton(),
                      ),
                      SizedBox(height: 22.h),
                      buildFeedbackMessage(),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
