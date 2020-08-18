import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks=[
    Task(name: "Buy Milk"),
    Task(name: "Buy egg"),
    Task(name: "Buy bread"),
  ];

  int get taskCount{
    return tasks.length;
  }

  void updateTask(Task task)
  {
    task.toggleDone();
    notifyListeners();
  }
  void addTask(String newTaskTitle)
  {
    final task = new Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void deleteTask(Task task)
  {
    tasks.remove(task);
    notifyListeners();
  }
}