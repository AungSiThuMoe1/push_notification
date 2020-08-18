import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:push_notification/constants.dart';
import 'package:push_notification/model/task.dart';
import 'package:push_notification/model/task_data.dart';
class AddTaskScreen extends StatelessWidget {
  String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(kDefaultPadding),topRight: Radius.circular(kDefaultPadding))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: kPrimaryColor,
            ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue){
                newTaskTitle = newValue;
              },
            ),
            FlatButton(
              onPressed: (){
               Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
               Navigator.pop(context);
              },
              child: Text("Add",
              style: TextStyle(
                color: kBackgroundColor
              ),
              ),
              color: kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
