import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> initializeApp() async {
  await Hive.initFlutter();
  await Hive.openBox<String>(
    'cacheBox',
    compactionStrategy: (entries, deletedEntries) {
      return deletedEntries > 50;
    },
  );

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
  );
}
