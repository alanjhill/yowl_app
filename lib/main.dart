import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yowl_app/app/app_config.dart';

import 'app/yowl_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig().init();
  runApp(const ProviderScope(child: YowlApp()));
}
