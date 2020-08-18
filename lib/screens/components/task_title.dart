import 'package:flutter/material.dart';
import 'package:push_notification/constants.dart';
class TaskTitle extends StatelessWidget {
  TaskTitle({this.taskTitle,this.isChecked,this.checkboxCallBack,this.longPressCallBack});
 final bool isChecked;
 final String taskTitle;
 Function checkboxCallBack;
 Function longPressCallBack;
  @override
  Widget build(BuildContext context) {
     return ListTile(
       onLongPress: longPressCallBack ,
      title: Text(taskTitle,
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null,
      ),
      ),
      trailing: Checkbox(
        activeColor: kPrimaryColor,
        onChanged: checkboxCallBack,
        value: isChecked,
      ),
    );
  }
}