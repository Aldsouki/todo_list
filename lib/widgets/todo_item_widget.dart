// import 'package:flutter/material.dart';

// import '../models/todo.dart';
// import '../utils/app_style.dart';

// class TodoItemWidget extends StatelessWidget {
//   final Todo todo;
//   final VoidCallback onDelete;
//   final VoidCallback onToggleCompleted;
//   final Function(Todo) onUpdate;

//   const TodoItemWidget(
//       {super.key,
//       required this.todo,
//       required this.onDelete,
//       required this.onToggleCompleted,
//       required this.onUpdate});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4.0,
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       child: ListTile(
//         title: Text(todo.title,
//             style: todo.isCompleted
//                 ? AppStyle.completedTodoTextStyle
//                 : AppStyle.todoTextStyle),
//         subtitle: Text(todo.description),
//         trailing: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             IconButton(
//                 onPressed: onToggleCompleted,
//                 icon: Icon(todo.isCompleted
//                     ? Icons.check_box
//                     : Icons.check_box_outline_blank),
//                 color: AppStyle.primaryColor),
//             IconButton(
//               icon: const Icon(Icons.edit, color: AppStyle.secondaryColor),
//               onPressed: () {
//                 _showEditTodoDialog(context);
//               },
//             ),
//             IconButton(
//               icon: const Icon(Icons.delete),
//               onPressed: onDelete,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _showEditTodoDialog(BuildContext context) {
//     TextEditingController titleController =
//         TextEditingController(text: todo.title);
//     TextEditingController descriptionController =
//         TextEditingController(text: todo.description);

//     showDialog(
//         context: context,
//         builder: (ctx) => AlertDialog(
//               title: Text("Edit Todo"),
//               content: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   TextField(
//                     // controller: titleController,
//                     decoration: InputDecoration(labelText: "Title"),
//                   ),
//                   TextField(
//                     // controller: descriptionController,
//                     decoration: InputDecoration(labelText: "Description"),
//                   ),
//                 ],
//               ),
//               actions: [
//                 ElevatedButton(
//                     onPressed: () {
//                       Todo updatedTodo = Todo(
//                           id: todo.id,
//                           title: titleController.text,
//                           description: descriptionController.text,
//                           isCompleted: todo.isCompleted);
//                       onUpdate(updatedTodo);
//                       Navigator.pop(context);
//                     },
//                     child: const Text("Update"))
//               ],
//             ));
//   }
// }

import 'package:flutter/material.dart';

import '../models/todo.dart';
import '../utils/app_style.dart';

class TodoItemWidget extends StatelessWidget {
  final Todo todo;
  final VoidCallback onDelete;
  final VoidCallback onToggleCompleted;
  final Function(Todo) onUpdate;

  const TodoItemWidget(
      {super.key,
      required this.todo,
      required this.onDelete,
      required this.onToggleCompleted,
      required this.onUpdate});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListTile(
          title: Text(todo.title,
              style: todo.isCompleted
                  ? AppStyle.completedTodoTextStyle
                  : AppStyle.todoTextStyle),
          subtitle: Text(todo.description),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: onToggleCompleted,
                  icon: Icon(todo.isCompleted
                      ? Icons.check_box
                      : Icons.check_box_outline_blank),
                  color: AppStyle.primaryColor),
              IconButton(
                  icon: const Icon(
                    Icons.edit,
                    color: AppStyle.secondaryColor,
                  ),
                  onPressed: () {
                    _showEditTodoDialog(context, todo);
                  }),
              IconButton(onPressed: onDelete, icon: const Icon(Icons.delete)),
            ],
          ),
        ));
  }

  void _showEditTodoDialog(BuildContext context, Todo todo) {
    TextEditingController titleController =
        TextEditingController(text: todo.title);
    TextEditingController descriptionController =
        TextEditingController(text: todo.description);

    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: const Text("Edit Todo"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: const InputDecoration(labelText: "Title"),
                    controller: titleController,
                  ),
                  TextField(
                    decoration: const InputDecoration(labelText: "Description"),
                    controller: descriptionController,
                  ),
                ],
              ),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Todo updatedTodo = Todo(
                          id: todo.id,
                          title: titleController.text,
                          description: descriptionController.text,
                          isCompleted: todo.isCompleted);
                      onUpdate(updatedTodo);
                      Navigator.pop(context);
                    },
                    child: const Text("Update"))
              ],
            ));
  }
}
