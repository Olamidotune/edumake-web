import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_school_data_dart_event.dart';
part 'get_school_data_dart_state.dart';
part 'get_school_data_dart_bloc.freezed.dart';

class GetSchoolDataDartBloc
    extends Bloc<GetSchoolDataDartEvent, GetSchoolDataDartState> {
  GetSchoolDataDartBloc() : super(_Initial()) {
    on<GetSchoolDataDartEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
