import 'package:bluestream/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:bluestream/utils/app_objects.dart';

class StreamAppBar extends AppBar {


  StreamAppBar({required BuildContext context, Key? key}) : super (
    key: key,
    title: const Text(AppConstants.appName),
    backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    actions: <Widget>[
      PopupMenuButton<String>(
        onSelected: (String result) {
          if(result == AppConstants.optionNameSettings) {
            AppLogger.logi(AppConstants.optionNameSettings);
          }
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: "Settings",
            child: Text(AppConstants.optionNameSettings)
          )
        ],
      )
    ]
  );

}