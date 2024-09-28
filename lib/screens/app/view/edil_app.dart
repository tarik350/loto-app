import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/utils/dialogue/language_change_dialogue.dart';

@RoutePage()
class EdilAppScreen extends StatelessWidget {
  const EdilAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        centerTitle: true,
        title: const Text("title").tr(),
        actions: [
          IconButton(
              onPressed: () async {
                String? selectedLanguage = await showDialog<String>(
                  context: context,
                  builder: (BuildContext context) {
                    return const LanguageSelectionDialog();
                  },
                );

                if (selectedLanguage != null) {
                  if (context.mounted) {
                    if (selectedLanguage.toLowerCase() == "amharic") {
                      context.setLocale(const Locale('am', 'ET'));
                    } else {
                      context.setLocale(const Locale('en', 'US'));
                    }
                  }
                }
              },
              icon: const Icon(
                Icons.language,
                color: Colors.black,
                size: 28,
              )),
        ],
      ),
      body: Center(child: Text("title".tr())),
    );
  }
}
