import 'package:flutter/material.dart';
import 'package:myapp/services/task_service.dart';

// Build add task UI
Widget buildAddTaskSection(
  TextEditingController nameController,
  VoidCallback addTask,
) {
  return Container(
    decoration: BoxDecoration(color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          // Task input field
          Expanded(
            child: Container(
              child: TextField(
                maxLength: 32,
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Add Task',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          // Add task button
          ElevatedButton(
            onPressed: addTask,
            child: Text("Add Task"),
          ),
        ],
      ),
    ),
  );
}
