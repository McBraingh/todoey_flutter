import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String myTaskTitle;

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task',textAlign: TextAlign.center, style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (text){
                setState(() {
                  myTaskTitle = text;
                });
              },

            ),
            FlatButton(
              child: Text('Add', style: TextStyle(color: Colors.white),),
              color: Colors.lightBlueAccent,
              onPressed: (){
                Provider.of<TaskData>(context).addTask(myTaskTitle);
                  Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
