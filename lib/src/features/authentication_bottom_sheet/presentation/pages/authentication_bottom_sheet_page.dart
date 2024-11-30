import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/features/authentication_bottom_sheet/presentation/cubit/auth_bottom_sheet_cubit.dart';
import 'package:mobile_app/src/features/authentication_bottom_sheet/presentation/widgets/auth_bottom_sheet_content.dart';
import 'package:mobile_app/src/features/login/presentation/bloc/login_bloc.dart';
import 'package:mobile_app/src/features/register/presentation/bloc/register_bloc.dart';

import '../../../../core/utils/injections.dart';

class AuthenticationBottomSheetPage {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppDimensions.radius4XL)),
      ),
      builder: (_) {
        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) async {
            if (didPop) return;

            final shouldPop = await ConfirmationDialogue().show(context);
            if (shouldPop ?? false) {
              if (context.mounted) {
                Navigator.of(context).pop();
              }
            }
          },
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom * .5),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width,
                minHeight: MediaQuery.of(context).size.height * .7,
                maxHeight: MediaQuery.of(context).size.height * .8,
              ),
              child: BlocProvider(
                create: (_) => AuthBottomSheetCubit(),
                child: Padding(
                  padding: EdgeInsets.all(AppDimensions.paddingM),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const AuthBottomSheetContent(),
                      const Spacer(),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: AppDimensions.fontXS,
                          ),
                          children: const [
                            TextSpan(
                              text: 'By logging in, you are agreeing to our ',
                            ),
                            TextSpan(
                              text: 'Terms and Conditions',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: ' and acknowledge that you have read our ',
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class ConfirmationDialogue {
  Future<bool?> show(BuildContext context) async {
    final registerBloc = sl<RegisterBloc>();
    final loginBloc = sl<LoginBloc>();

    return showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text('Do you want to close this form?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop(false);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                registerBloc.add(const RegisterEvent.resetForm());
                Navigator.pop(dialogContext, true);
              },
              child: const Text(
                'Yes, close',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }
}
