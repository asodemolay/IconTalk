import 'dart:async';

import 'package:flutter_tts/flutter_tts.dart';

class TTS {
  final _tts = FlutterTts();

  TTS() {
    _setInitialConfig().then((_) => null);
  }

  Future<void> _setInitialConfig() async {
    await _tts.awaitSpeakCompletion(true);
    await _tts.setLanguage("pt-BR");
    await _tts.setSpeechRate(0.5);
    await _tts.setVolume(1.0);
    final voice = {'name': 'pt-br-x-ptd-local', 'locale': 'pt-BR'};
    await _tts.setVoice(voice);
  }

  Future<dynamic> speak(String text) async {
    return await _tts.speak(text);
  }
}
