// Group 6
// Murtaza Johar 22K-4508
// Shahmir Ahmed Khan 22K-4414
// Saad Ahmed 22K-4345
// Haseeb Mujtaba 22K-4307

import 'package:flutter/material.dart';

void main() {
  runApp(const TodoUiApp());
}

class TodoUiApp extends StatelessWidget {
  const TodoUiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoHomePage(),
    );
  }
}

class TodoHomePage extends StatelessWidget {
  const TodoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Heading
              const Text(
                "My Todo List",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // Todo items
              const TodoItem(title: "Buy groceries", isChecked: true),
              const TodoItem(title: "Finish Flutter UI", isChecked: false),
              const TodoItem(title: "Go for a walk", isChecked: false),

              const Spacer(),

              // Bottom input area
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Add a new task",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(onPressed: () {}, child: const Text("Add")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TodoItem extends StatelessWidget {
  final String title;
  final bool isChecked;

  const TodoItem({super.key, required this.title, required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: null, // UI only
        ),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              decoration: isChecked ? TextDecoration.lineThrough : null,
            ),
          ),
        ),
      ],
    );
  }
}
