import 'dart:async';

import 'package:flutter_tts/flutter_tts.dart';

class TTS {
  final _ttsService = FlutterTts();
  static final _instance = TTS._internal();

  factory TTS() {
    return _instance;
  }

  TTS._internal() {
    _setInitialConfig();
  }

  Future<void> _setInitialConfig() async {
    await _ttsService.awaitSpeakCompletion(false);
    await _ttsService.setLanguage("pt-BR");
    await _ttsService.setSpeechRate(0.5);
    await _ttsService.setVolume(1.0);
    final voice = {'name': 'pt-br-x-ptd-local', 'locale': 'pt-BR'};
    await _ttsService.setVoice(voice);
    await _ttsService.awaitSynthCompletion(true);
  }

  Future<dynamic> speak(String text) async {
    await _ttsService.stop();
    return await _ttsService.speak(text);
  }
}

// Singleton using dart factory
class Singleton {
  // static variable
  static final Singleton _instance = Singleton._internal();

// factory constructor
  factory Singleton() {
    return _instance;
  }
  // private constructor
  Singleton._internal();
}
