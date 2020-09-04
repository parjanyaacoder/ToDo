import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/models/task_data.dart';


import 'task_tile.dart';
class TasksList extends StatelessWidget {

   
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder:(context, taskData,child){
        return  ListView.builder(itemBuilder: (context,index){
          return TaskTile(
            taskTitle: taskData.tasks[index].name,isChecked: taskData.tasks[index].isDone,
            checkboxCallback: (newValue) {

                taskData.updateTask(taskData.tasks[index]);

            },
            longPressCallBack: (){
              taskData.deleteTask(taskData.tasks[index]);
            },

          );

        },
          itemCount: taskData.taskCount,);
      },
    );
  }
}