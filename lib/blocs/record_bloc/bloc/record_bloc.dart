import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:record/record.dart';

part 'record_event.dart';
part 'record_state.dart';

class RecordBloc extends Bloc<RecordEvent, RecordingState> {
  RecordBloc() : super(RecordingState(audioRecorder: Record(), whatState: () {  })) {
    on<StartandStopRecordEvent>(
      (event, emit) async {
        emit(
          state.copyWith(
            status: event.state,
            audioRecorder: event.audioRecorder,
            timer: event.timer,
            recordDuration: event.recordDuration,
            whatState: () => event.whatState,
          ),
        );
      },
    );
    // on<StopRecordEvent>(
    //   (event, emit) {
    //     emit(
    //       state.copyWith(
    //         audioRecorder: event.audioRecorder,
    //         timer: event.timer,
    //         recordDuration: event.recordDuration,
    //       ),
    //     );
    //   },
    // );
  }
}
