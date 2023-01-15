import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umlaut/diagrams/overview/diagrams_cubit.dart';
import 'package:umlaut/diagrams/texts.dart';
import 'package:umlaut/i18n/text_provider.dart';
import 'package:umlaut/i18n/texts.dart';

class DiagramList extends StatelessWidget {
  const DiagramList({super.key});

  @override
  Widget build(BuildContext context) {
    return TextProvider(
      texts: DiagramTexts(context),
      child: BlocBuilder<DiagramsCubit, DiagramsState>(
        builder: (context, state) {
          final texts = Texts.of<DiagramTexts>(context);

          if (state is DiagramsAreBeingLoaded) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is DiagramsHaveBeenLoaded) {
            return ListView.builder(
              itemCount: state.diagrams.length,
              itemBuilder: (context, index) => Card(
                child: Text(state.diagrams[index].title ?? texts.defaultDiagramName()),
              ),
            );
          } else {
            return Center(
              child: Text(texts.diagramsCouldNotBeLoaded()),
            );
          }
        },
      ),
    );
  }
}
