import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeech {
  static FlutterTts tts = FlutterTts();

  static initTTS() async {
    // print(await tts.getLanguages);

    tts.setLanguage("en-US");
    tts.setPitch(1.0);
    // tts.setSpeechRate(1.0);
    tts.setVolume(1.0);
  }

  static speak(String text) async {
    tts.setStartHandler(() {
      print("TTS is STARTED");
    });
    tts.setCompletionHandler(() {
      print("COMPLETED");
    });
    tts.setErrorHandler((message) {
      print("message");
    });

    await tts.awaitSynthCompletion(true);

    tts.speak(text);
  }
}
