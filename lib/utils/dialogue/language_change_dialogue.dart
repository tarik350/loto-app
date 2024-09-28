import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LanguageSelectionDialog extends StatefulWidget {
  const LanguageSelectionDialog({super.key});

  @override
  _LanguageSelectionDialogState createState() =>
      _LanguageSelectionDialogState();
}

class _LanguageSelectionDialogState extends State<LanguageSelectionDialog> {
  late String _selectedLanguage;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Safe to access context-related information here
    _selectedLanguage =
        context.locale == const Locale('am', 'ET') ? "Amharic" : "English";
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('select_language'.tr()),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RadioListTile<String>(
            title: const Text('English'),
            value: 'English',
            groupValue: _selectedLanguage,
            onChanged: (value) {
              setState(() {
                _selectedLanguage = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('amharic').tr(),
            value: 'Amharic',
            groupValue: _selectedLanguage,
            onChanged: (value) {
              setState(() {
                _selectedLanguage = value!;
              });
            },
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(_selectedLanguage);
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
