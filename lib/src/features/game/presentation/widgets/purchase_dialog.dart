import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/core/widgets/game_button1.dart';
import 'package:mobile_app/src/core/widgets/tab_scale_animation_wrapper.dart';
import 'package:mobile_app/src/shared/widgets/custome_dialogue.dart';

class PurchaseDialog extends StatelessWidget {
  const PurchaseDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
        title: 'Confirm Ticket Purhcase',
        insetPadding: EdgeInsets.symmetric(horizontal: AppDimensions.spacingM),
        contentPadding: EdgeInsets.symmetric(
            horizontal: AppDimensions.paddingM,
            vertical: AppDimensions.paddingM),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.center,
                  'Please enter your password or use your biometrics to confirm the purchase.',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: AppDimensions.fontS),
                ),
              ),
              SizedBox(
                height: AppDimensions.spacingL,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          hintText: 'Password',
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: AppDimensions.fontS),
                          isDense: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(AppDimensions.radiusS),
                            borderSide: BorderSide(
                                color: AppColors.primaryColor.withOpacity(0.8)),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  AppDimensions.radiusS))),
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    width: AppDimensions.spacingS,
                  ),
                  FingerprintWidget()
                ],
              ),
              SizedBox(
                height: AppDimensions.spacingS,
              ),
              SizedBox(
                height: AppDimensions.spacingS,
              ),
              GameButton1(
                width: MediaQuery.sizeOf(context).width,
                leftOffset: -70,
                height: AppDimensions.buttonL,
                bgGradientTopColor: AppColors.lightSkyBlue,
                bgGradientBottomColor: AppColors.darkBlueShade,
                borderGradientTopColor: AppColors.lightSkyBlue.withAlpha(10),
                borderGradientBottomColor: AppColors.lightSkyBlue,
                shadowColor: AppColors.darkBlueShade,
                title: 'Continue',
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}

class FingerprintWidget extends StatelessWidget {
  final LocalAuthentication auth = LocalAuthentication();

  FingerprintWidget({super.key});

  Future<void> _authenticate(BuildContext context) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    try {
      bool isAvailable = await auth.canCheckBiometrics;

      if (!isAvailable) {
        scaffoldMessenger.showSnackBar(
          const SnackBar(
              content: Text('Biometric authentication not available')),
        );
        return;
      }

      bool isAuthenticated = await auth.authenticate(
        localizedReason: 'Please authenticate to proceed',
        options: const AuthenticationOptions(biometricOnly: true),
      );

      if (!context.mounted) return;

      if (isAuthenticated) {
        scaffoldMessenger.showSnackBar(
          const SnackBar(content: Text('Authentication successful')),
        );
      } else {
        scaffoldMessenger.showSnackBar(
          const SnackBar(content: Text('Authentication failed')),
        );
      }
    } on PlatformException catch (e) {
      if (!context.mounted) return;
      switch (e.code) {
        case 'NotAvailable':
          scaffoldMessenger.showSnackBar(
            const SnackBar(content: Text('Biometric hardware not available')),
          );
          break;
        case 'NotEnrolled':
          scaffoldMessenger.showSnackBar(
            const SnackBar(
                content: Text('No biometrics enrolled on this device')),
          );
          break;
        case 'LockedOut':
          scaffoldMessenger.showSnackBar(
            const SnackBar(
                content: Text('Biometric authentication temporarily locked')),
          );
          break;
        case 'PermanentlyLockedOut':
          scaffoldMessenger.showSnackBar(
            const SnackBar(
                content: Text('Biometric authentication permanently locked')),
          );
          break;
        case 'PasscodeNotSet':
          scaffoldMessenger.showSnackBar(
            const SnackBar(content: Text('Device passcode not set')),
          );
          break;
        default:
          scaffoldMessenger.showSnackBar(
            SnackBar(content: Text('Error: ${e.message ?? 'Unknown error'}')),
          );
          break;
      }
    } catch (e) {
      // Handle other exceptions
      scaffoldMessenger.showSnackBar(
        SnackBar(content: Text('An unexpected error occurred: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScaleOnTapAnimationWrapper(
      child: GestureDetector(
        onTap: () {
          _authenticate(context);
        },
        child: SizedBox(
          height: AppDimensions.iconL,
          width: AppDimensions.iconL,
          child: AppImages.fingerprint,
        ),
      ),
    );
  }
}
