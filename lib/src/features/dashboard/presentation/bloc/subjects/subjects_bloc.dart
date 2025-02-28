import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subjects_event.dart';
part 'subjects_state.dart';
part '../bloc/subjects_bloc.freezed.dart';

class SubjectsBloc extends Bloc<SubjectsEvent, SubjectsState> {
  SubjectsBloc() : super(_Initial()) {
    on<SubjectsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
