import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:record/record.dart';

part 'record_event.dart';
part 'record_state.dart';

class RecordBloc extends Bloc<RecordEvent, RecordingState> {
  RecordBloc() : super(RecordingState(audioRecorder: Record(), whatState: () {  })) {
    on<StartRecordEvent>(
      (event, emit) {
        emit(
          state.copyWith(
            status: state.status,
            audioRecorder: event._audioRecorder,
            timer: event._timer,
            recordDuration: event._recordDuration,
            whatState: () async {
              await event.start();
            },
          ),
        );
      },
    );
    on<StopRecordEvent>(
      (event, emit) {
        emit(
          state.copyWith(
            status: state.status,
            audioRecorder: event._audioRecorder,
            timer: event._timer,
            recordDuration: event._recordDuration,
            whatState: () async {
              await event.stop();
            },
          ),
        );
      },
    );
  }
}
