import 'package:flutter/material.dart';
import 'app.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Setup dependency injection (even if empty for now)
  await configureDependencies();

  runApp(const MyApp());
}
