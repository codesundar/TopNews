import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

import 'error_logger.dart';

class AudioHelper {
  static final AudioHelper _singleton = AudioHelper._internal();
  factory AudioHelper() {
    return _singleton;
  }

  AudioHelper._internal();

  final record = AudioRecorder();
  final player = AudioPlayer();

  deleteAudio(path) async {
    await File(path).delete();
  }

  startRecording(id) async {
    if (await record.hasPermission()) {
      try {
        var newPath = await getTemporaryDirectory();
        var filePath = Platform.isAndroid
            ? '${newPath.path}/tmp.wav'
            : '${newPath.path}/$id.wav';

        await record.start(
          const RecordConfig(encoder: AudioEncoder.wav),
          path: filePath,
        );
      } catch (e) {
        ErrorLogger().logError(e);
      }
    } else {
      ErrorLogger().logError('Device Permission Required');
    }
  }

  stopRecording(id) async {
    try {
      var path = await record.stop();
      if (path != null) {
        if (Platform.isAndroid) {
          var directory = await getTemporaryDirectory();
          await File('${directory.path}/tmp.wav')
              .rename('${directory.path}/$id.wav');
        }
      }
    } catch (e) {
      ErrorLogger().logError(e);
    }
  }

  dispose() async {
    await record.dispose();
  }

  playAudio(path) async {
    try {
      DeviceFileSource source = DeviceFileSource(path);
      await player.setSourceDeviceFile(path);
      await player.play(source);
    } catch (e) {
      ErrorLogger().logError(e);
    }
  }

  stopAudio() async {
    await player.stop();
  }
}
