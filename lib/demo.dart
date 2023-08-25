// ignore_for_file: avoid_print

import 'dart:ffi';

import 'audio_player.dart';

Future<void> main() async {
  AudioPlayerUtils audioPlayerLibrary = AudioPlayerUtils(DynamicLibrary.open(
      'lib/libaudioplayer.dylib'));
  await Future.delayed(Duration.zero);
  final player = AudioPlayer.new1(audioPlayerLibrary);

  player.playWithPath_(NSString(audioPlayerLibrary,
      'lib/assets_audio.mp3'));

  print('player started');

  await Future.delayed(
    const Duration(seconds: 5),
    () => player.stopAudio(),
  );

  print('player stopped');
}