part of 'record_bloc.dart';

//  enum RecordStateStatus { pause, record, stop }

// @immutable
class RecordingState {
  RecordingState({
    this.status = RecordState.pause,
    required this.audioRecorder, 
    this.recordDuration = 0,
    this.timer,
    required this.whatState,
    this.recordSub,
    this.amplitude,
    this.amplitudeSub,
  });
  
  StreamSubscription<RecordState>? recordSub;
  StreamSubscription<Amplitude>? amplitudeSub;
  Amplitude? amplitude;
  RecordState status;
  final Record audioRecorder;
  final int recordDuration;
  final Timer? timer;
  final Function() whatState;

  RecordingState copyWith({
    RecordState? status,
    Record? audioRecorder,
    Timer? timer,
    int? recordDuration,
    Function()? whatState,
    StreamSubscription<RecordState>? recordSub,
    StreamSubscription<Amplitude>? amplitudeSub,
    Amplitude? amplitude,
  }) {
    return RecordingState(
      status: status ?? this.status,
      recordDuration: recordDuration ?? this.recordDuration,
      timer: timer ?? this.timer,
      audioRecorder: audioRecorder ?? this.audioRecorder,
      whatState: whatState ?? this.whatState,
      amplitude: amplitude ?? this.amplitude,
      amplitudeSub: amplitudeSub ?? this.amplitudeSub,
      recordSub: recordSub ?? this.recordSub,
    );
  }
}
