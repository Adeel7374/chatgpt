import 'package:chatbot/colors.dart';
import 'package:chatbot/tts.dart';
import 'package:flutter/material.dart';

class TTSScreen extends StatelessWidget {
  const TTSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        title: const Text("Text To Speech"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: textController,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: bgColor, //background color of button
                // side: BorderSide(
                //     width: 3, color: Colors.black), //border width and color
                // elevation: 0.0, //elevation of button
                shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.all(8) //content padding inside button
                ),
            onPressed: () {
              TextToSpeech.speak(textController.text);
            },
            child: const Text("Speak"),
          ),
        ],
      ),
    );
  }
}
