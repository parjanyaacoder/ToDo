import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/models/task_data.dart';
import 'package:todos/widgets/task_list.dart';

import 'add_task_screen.dart';
class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0,left: 30.0,right: 30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(child: Icon(Icons.list,size: 30.0,),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(height: 10.0,),
                Text('Todoey',style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.w700,fontSize:50.0),),
                Text('${Provider.of<TaskData>(context).taskCount} tasks',style: TextStyle(color: Colors.white,fontSize:18.0),),
                 ],      ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: double.infinity,
              child: TasksList(),
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))),

            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child:Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(context: context,builder:(BuildContext context) => AddTaskScreen());
        },
      ),
    );
  }
}


