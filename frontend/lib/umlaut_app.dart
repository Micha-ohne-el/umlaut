import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umlaut/color_scheme.dart';
import 'package:umlaut/diagrams/overview/diagram_repo.dart';
import 'package:umlaut/diagrams/overview/diagrams_cubit.dart';
import 'package:umlaut/home_screen.dart';
import 'package:umlaut/i18n/text_provider.dart';
import 'package:umlaut/texts.dart';

class UmlautApp extends StatelessWidget {
  const UmlautApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TextProvider(
      texts: GlobalTexts(context),
      child: BlocProvider(
        create: (_) => DiagramsCubit(DiagramRepo()),
        child: MaterialApp(
          theme: ThemeData(
            colorScheme: lightScheme,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: darkScheme,
            useMaterial3: true,
          ),
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
