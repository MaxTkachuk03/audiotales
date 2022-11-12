part of 'record_bloc.dart';

// @immutable
abstract class RecordEvent {
  int _recordDuration = 0;
  Timer? _timer;
  final Record _audioRecorder = Record();
  StreamSubscription<RecordState>? _recordSub;
  final RecordState _recordState = RecordState.stop;
  StreamSubscription<Amplitude>? _amplitudeSub;
  Amplitude? _amplitude;

  // _recordSub = _audioRecorder.onStateChanged().listen((recordState) {
  //     //setState(() => );
  //     _recordState = recordState;
  //   });

  //   _amplitudeSub = _audioRecorder
  //       .onAmplitudeChanged(const Duration(milliseconds: 300))
  //       .listen((amp) => _amplitude = amp);//setState(() => )); 

 

}

class StartRecordEvent extends RecordEvent {
  Future<void> start() async {
    try {
      if (await _audioRecorder.hasPermission()) {
        // We don't do anything with this but printing
        final isSupported = await _audioRecorder.isEncoderSupported(
          AudioEncoder.aacLc,
        );
        if (kDebugMode) {
          print('${AudioEncoder.aacLc.name} supported: $isSupported');
        }

        // final devs = await _audioRecorder.listInputDevices();
        // final isRecording = await _audioRecorder.isRecording();

        //await audioRecorder.start(path:'audio');
        await _audioRecorder.start();
        _recordDuration = 0;

        // _startTimer(); внизу

        _timer?.cancel();

        _timer = Timer.periodic(
          const Duration(seconds: 1),
          (Timer t) {
            _recordDuration++;
            //setState(() => );
          },
        );
        // кінець функції
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}

class StopRecordEvent extends RecordEvent {
  Future<void> stop() async {
    _timer?.cancel();
    _recordDuration = 0;

    final path = await _audioRecorder.stop();
    //final File audioFile;

    if (path != null) {
      //  audioFile = File(path);
      //widget.onStop(path);
    }
  }
}
  
