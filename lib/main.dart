import 'package:b/ui/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(const MyApp());
}

var logger = Logger(
  printer: PrettyPrinter(),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: NeumorphicTheme(
          theme: const NeumorphicThemeData(
            defaultTextColor: Color(0xFF303E57),
            accentColor: Color(0xFFfc7b03),
            variantColor: Colors.black38,
            baseColor: Color(0xFFF8F9FC),
            depth: 8,
            intensity: 0.5,
            lightSource: LightSource.topLeft,
          ),
          themeMode: ThemeMode.light,
          child: const NeumorphicBackground(
            child: HomePage(),
          ),
        ),
      ),
    );
  }
}
