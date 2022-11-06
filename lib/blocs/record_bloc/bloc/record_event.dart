part of 'record_bloc.dart';

// @immutable
abstract class RecordEvent {}

class StartandStopRecordEvent extends RecordEvent {
  StartandStopRecordEvent({
    required this.audioRecorder,
    required this.recordDuration,
    this.timer,
    required this.whatState,
    required this.state, 
  });

  final RecordState state;
  final Record audioRecorder;
  final int recordDuration;
  final Timer? timer;
  final Function() whatState;
}

// class StopRecordEvent extends RecordEvent {
//     StopRecordEvent({
//     required this.audioRecorder,
//     required this.recordDuration,
//     this.timer,
//   });

//   final Record audioRecorder;
//   final int recordDuration;
//   final Timer? timer;
// }
