import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umlaut/diagrams/diagram.dart';
import 'package:umlaut/diagrams/overview/diagram_repo.dart';

class DiagramsCubit extends Cubit<DiagramsState> {
  DiagramsCubit(this.repo) : super(DiagramsHaveYetToLoad()) {
    load();
  }

  final DiagramRepo repo;

  void load() async {
    try {
      emit(DiagramsAreBeingLoaded());
      final diagrams = await repo.fetchDiagrams();
      emit(DiagramsHaveBeenLoaded(diagrams));
    } catch (e) {
      emit(DiagramsCouldNotBeLoaded());
    }
  }
}

abstract class DiagramsState extends Equatable {}

class DiagramsHaveYetToLoad extends DiagramsState {
  @override
  get props => [];
}

class DiagramsAreBeingLoaded extends DiagramsState {
  @override
  get props => [];
}

class DiagramsHaveBeenLoaded extends DiagramsState {
  DiagramsHaveBeenLoaded(this.diagrams);

  final List<Diagram> diagrams;

  @override
  get props => [diagrams];
}

class DiagramsCouldNotBeLoaded extends DiagramsState {
  @override
  get props => [];
}
