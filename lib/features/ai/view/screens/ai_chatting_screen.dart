import 'dart:convert';
import 'dart:developer';
import 'package:docshpere/features/ai/view/widgets/live_chatting_screen.dart';
import 'package:docshpere/features/ai/view_model/bloc/docsphere_ai_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class AiChattingScreen extends StatefulWidget {
  const AiChattingScreen({super.key});

  @override
  State<AiChattingScreen> createState() => _AiChattingScreenState();
}

class _AiChattingScreenState extends State<AiChattingScreen> {
  final TextEditingController controller = TextEditingController();
  final List<Map<String, String>> messages = [];
  final String apiKey = 'AIzaSyALVtAxF5Ns8_DnY41BEQXIMA4I9uLvGhc';

  bool isLoading = false;

  Future<void> sendMessage() async {
    final userMessage = controller.text.trim();
    if (userMessage.isEmpty) return;
    DateTime now = DateTime.now();

    String senderTime =
        DateFormat('yyyy-MM-dd HH:mm:ss a').format(DateTime.now());
    DateTime modifiedTime = now.add(Duration(seconds: 1));
    String timeStamp = DateFormat('yyyy-MM-dd HH:mm:ss a').format(modifiedTime);

    setState(() {
      messages.add({'sender': 'User', 'text': userMessage, 'time': senderTime});
      controller.clear();
      isLoading = true;
    });

    try {
      final response = await http.post(
        Uri.parse(
            'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=$apiKey'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "contents": [
            {
              "parts": [
                {
                  "text":
                      'I have a $userMessage. Which category of doctor should I consult for this health condition?. if this qestion is not based on health or medical, then give the respone as "Please enter your health symptoms like headache, backpain..." otherwise give proper resoponse, but dont give any styles for the response but it minimum should be 20 words'
                }
              ]
            }
          ]
        }),
      );

      log(userMessage);

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body) as Map<String, dynamic>;
        final candidates = responseData['candidates'] as List<dynamic>;
        if (candidates.isNotEmpty) {
          final content = candidates.first['content'] as Map<String, dynamic>;
          final parts = content['parts'] as List<dynamic>;
          final aiText = parts.first['text'] as String;

          setState(() {
            messages
                .add({'sender': 'Gemini', 'text': aiText, 'time': timeStamp});
          });
        } else {
          setState(() {
            messages.add({
              'sender': 'Gemini',
              'text': 'No response received.',
              'time': timeStamp
            });
          });
        }
      } else {
        final errorData = jsonDecode(response.body);
        setState(() {
          messages.add({
            'sender': 'Gemini',
            'text': 'Error: ${errorData['error']['message']}',
            'time': timeStamp,
          });
        });
      }
    } catch (e) {
      setState(() {
        messages.add({
          'sender': 'Gemini',
          'text':
              'Error: Something went wrong. Please check your network connection.',
          'time': timeStamp,
        });
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    context.read<DocsphereAiBloc>().add(DocsphereAiEvent.fetchAllChatsWithAi());
    return LiveChattingScreen(
      controller: controller,
      messages: messages,
      isLoading: isLoading,
      sendMessage: sendMessage,
    );
  }
}
