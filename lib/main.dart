import 'package:bloom/core/di/di_container.dart';
import 'package:bloom/presentation/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await initDi();

  if (kDebugMode) {
    _initLogger();
  }

  runApp(const BloomApp());
}

void _initLogger() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(
    (record) {
      final loggerName = record.loggerName;
      final levelName = record.level.name;
      final message = record.message;
      final formattedTime = DateFormat('HH:mm:ss').format(record.time);
      if (kDebugMode) {
        print('$loggerName($levelName-$formattedTime):$message');
      }
    },
  );
}
