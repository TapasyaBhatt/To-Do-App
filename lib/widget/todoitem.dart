import 'package:flutter/material.dart';
import 'package:project1/todo.dart';

import '../color.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final ontoDoChanged;
  final onDeleteItem;
    ToDoItem({Key?key,required this.todo,required this.ontoDoChanged,required this.onDeleteItem}):super(key: key);
final todoList=ToDo.todoList();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.all(15),
      //decoration: BoxDecoration(border: Border.all(color: tdBlue)),
      child: ListTile(
        onTap: () {
          ontoDoChanged(todo);
         // print('tapped on todo');
        },
        tileColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        leading: Icon(
          todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
              color: tdBlack,
              fontSize: 16,
              decoration: todo.isDone? TextDecoration.lineThrough:null),
        ),
        trailing: Container(
          child: IconButton(
           icon: Icon( Icons.delete),
            color: tdRed,
            onPressed: (){
              onDeleteItem(todo.id);
             // print('delete tapped');
            },
          ),
          
        ),
        
      ),
    );
  }
}
