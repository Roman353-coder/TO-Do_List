class Task {

  // task unique id
  final String id;

  // task name
  final String name;

  // task completed status
  final bool completed;

  // create task object 
  Task({required this.id, required this.name, required this.completed});
  
  // convert map data 
  factory Task.fromMap(String id, Map<String, dynamic> data) {
    return Task(
      id: id,
      name: data['name'],

      // default completed value
      completed: data['completed'] ?? false,
    );
  }
}
