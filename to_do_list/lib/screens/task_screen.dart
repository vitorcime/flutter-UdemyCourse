import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/tasks_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  // void addTask(Task newTask) {
  //   setState(() {
  //     Provider.of<TaskData>(context).tasksList.add(newTask);
  //   });
  //   Navigator.pop(context);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(
                  // addTask: addTask,
                  ));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text('${Provider.of<TaskData>(context).taskCount} tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
