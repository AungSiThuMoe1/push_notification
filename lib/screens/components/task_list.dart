import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:push_notification/model/task.dart';
import 'package:push_notification/model/task_data.dart';
import 'task_title.dart';
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return  ListView.builder(itemBuilder: (context,index){
          List<Task> tasks = taskData.tasks;
          return TaskTitle(taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallBack: (bool checkboxState){
            Provider.of<TaskData>(context,listen: false).updateTask(tasks[index]);
          },
          longPressCallBack: (){
            taskData.deleteTask(tasks[index]);
          },
          );
        },itemCount: taskData.taskCount,);
      },
    );
  }
}
