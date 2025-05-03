import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, dynamic>> _messages = [];

  // Обработка отправки сообщения
  void _sendMessage(String messageText) {
    if (messageText.isNotEmpty) {
      setState(() {
        _messages.add({'sender': 'user', 'content': messageText});
        _messages.add({
          'sender': 'ai',
          'content': _generateResponse(messageText),
        });
        _controller.clear();
      });
    }
  }

  // Генерация ответа AI
  List<Map<String, dynamic>> _generateResponse(String prompt) {
    switch (prompt.toLowerCase()) {
      case 'which phase am i in? 🌸':
        return [
          {
            'text': 'You are likely in the ',
            'style': const TextStyle(fontSize: 14, color: Colors.grey),
          },
          {
            'text': 'Menstrual Phase (Day 1-7) 🌸',
            'style': const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF445CAA),
            ),
          },
          {
            'text':
                '. For a precise answer, please provide your cycle start date and cycle length.',
            'style': const TextStyle(fontSize: 14, color: Colors.grey),
          },
        ];
      case 'tips on nutrition? 🥗':
        return [
          {
            'text': 'Nutrition tips vary by cycle phase:\n',
            'style': const TextStyle(fontSize: 14, color: Colors.grey),
          },
          {
            'text': 'Menstrual Phase 🩸: ',
            'style': const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF445CAA),
            ),
          },
          {
            'text':
                'Focus on iron-rich foods (spinach, red meat) and stay hydrated.\n',
            'style': const TextStyle(fontSize: 14, color: Colors.grey),
          },
        ];
      case 'struggling with pms? 😔':
        return [
          {
            'text': 'PMS can be challenging 😔. Here are some tips:\n',
            'style': const TextStyle(fontSize: 14, color: Colors.grey),
          },
          {
            'text': 'Diet 🥕: ',
            'style': const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF445CAA),
            ),
          },
          {
            'text':
                'Reduce caffeine, alcohol, and salty foods. Eat magnesium-rich foods (dark chocolate, nuts).\n',
            'style': const TextStyle(fontSize: 14, color: Colors.grey),
          },
          {
            'text': 'Exercise 🏃‍♀️: ',
            'style': const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF445CAA),
            ),
          },
          {
            'text': 'Try gentle yoga or walking to ease symptoms.\n',
            'style': const TextStyle(fontSize: 14, color: Colors.grey),
          },
          {
            'text': 'Self-Care 🛁: ',
            'style': const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF445CAA),
            ),
          },
          {
            'text': 'Practice mindfulness, journaling, or warm baths.\n',
            'style': const TextStyle(fontSize: 14, color: Colors.grey),
          },
          {
            'text': 'Supplements 💊: ',
            'style': const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF445CAA),
            ),
          },
          {
            'text': 'Consider magnesium or vitamin B6 (consult a doctor).\n',
            'style': const TextStyle(fontSize: 14, color: Colors.grey),
          },
          {
            'text': 'Track your symptoms in the app to identify patterns!',
            'style': const TextStyle(fontSize: 14, color: Colors.grey),
          },
        ];
      default:
        return [
          {
            'text':
                'I received your message: "$prompt". How can I assist further? 🤔',
            'style': const TextStyle(fontSize: 14, color: Colors.grey),
          },
        ];
    }
  }

  // Обработка нажатия на промпт
  void _handlePrompt(String promptText) {
    _sendMessage(promptText);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/bloomlogo.png',
                    height: 40,
                    width: 40,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) => const Icon(
                      Icons.error,
                      size: 40,
                      color: Colors.red,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.settings, color: Colors.grey[500]),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Замена изображения на заглушку
                  CircleAvatar(
                    radius: 50,
                    child: Image.asset(
                      'assets/images/biggerlogo.png',
                      height: 50,
                      width: 50,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) => const Icon(
                        Icons.error,
                        size: 50,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    'Welcome to Bloom AI 🌸',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Start chatting with Bloom AI now',
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Suggested prompts',
                    style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                  ),
                  const SizedBox(height: 8),
                  PromptCard(
                    text: 'Which phase am I in? 🌸',
                    onTap: () => _handlePrompt('Which phase am I in? 🌸'),
                  ),
                  PromptCard(
                    text: 'Tips on nutrition? 🥗',
                    onTap: () => _handlePrompt('Tips on nutrition? 🥗'),
                  ),
                  PromptCard(
                    text: 'Struggling with PMS? 😔',
                    onTap: () => _handlePrompt('Struggling with PMS? 😔'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final message = _messages[index];
                  final isUser = message['sender'] == 'user';
                  return Align(
                    alignment:
                        isUser ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: isUser
                            ? const Color(0xFF445CAA)
                            : const Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.circular(18).copyWith(
                          bottomRight: isUser ? const Radius.circular(4) : null,
                          bottomLeft: !isUser ? const Radius.circular(4) : null,
                        ),
                      ),
                      child: isUser
                          ? Text(
                              message['content'] as String,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: (message['content']
                                      as List<Map<String, dynamic>>)
                                  .map(
                                    (segment) => Text(
                                      segment['text'],
                                      style: segment['style'],
                                    ),
                                  )
                                  .toList(),
                            ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Type a message...',
                        filled: true,
                        fillColor: Colors.grey[50],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(999),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(Icons.send, color: Colors.white),
                    onPressed: () => _sendMessage(_controller.text),
                    padding: const EdgeInsets.all(12),
                    constraints: const BoxConstraints(
                      minWidth: 48,
                      minHeight: 48,
                    ),
                    style: IconButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// PromptCard Widget
class PromptCard extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const PromptCard({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        margin: const EdgeInsets.only(bottom: 4),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
