import 'package:e_commerce_app/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  /// Widgets Flutter Binding
  final widgetBinding = WidgetsFlutterBinding.ensureInitialized();
  /// Flutter Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetBinding);
  runApp(const MyApp());
}
