import 'package:flutter/material.dart';
import 'package:push_notification/constants.dart';
import 'package:provider/provider.dart';
import 'package:push_notification/model/task_data.dart';
import 'add_task_screen.dart';
import 'components/task_list.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         showModalBottomSheet(context: context,
             isScrollControlled: true,
              builder: (BuildContext context) => SingleChildScrollView(
           child: Container(
             padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
             child: AddTaskScreen(),
           ),
         ));
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: kPrimaryColor,
                  ),
                  backgroundColor: kBackgroundColor,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Today",
                  style: TextStyle(
                    fontSize: 50,
                    color: kBackgroundColor,
                  ),
                ),
                Text(
                  "${Provider.of<TaskData>(context).taskCount} tasks",
                  style: TextStyle(
                    color: kBackgroundColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding),
                    topRight: Radius.circular(kDefaultPadding)),
              ),
              child: TaskList(),
            ),
          )
        ],
      ),
    );
  }
}



