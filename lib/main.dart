// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:todo_list/controllers/todo_controller.dart';
// import 'package:todo_list/models/todo.dart';
// import 'package:todo_list/widgets/todo_item_widget.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final TodoController _todoController = TodoController();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Todo List'),
//           backgroundColor: Colors.blueGrey,
//         ),
//         body: Center(
//             child: Column(
//           children: [
//             TodoItemWidget(
//               todo: Todo(
//                   id: "1",
//                   title: "My First Task",
//                   description: "My task description"),
//               onDelete: () => _todoController.deleteTodo(
//                 Todo(
//                     id: "1",
//                     title: "My First Task",
//                     description: "My task description"),
//               ),
//               onToggleCompleted: () => _todoController.togglecomplete(Todo(
//                 id: "1",
//                 title: "My First Task",
//                 description: "My task description",
//               )),
//               onUpdate: (updateItem) {
//                 _todoController.updateTodo(Todo(
//                     id: "1",
//                     title: "My First Task",
//                     description: "My task description",
//                     isCompleted: true));
//               },
//             ),

            // TodoItemWidget(
            //     todo: Todo(
            //         id: "2",
            //         title: "My Second Task",
            //         description: "My task description")),
            // TodoItemWidget(
            //     todo: Todo(
            //         id: "3",
            //         title: "My Third Task",
            //         description: "My task description")),
          // ],
        // )),
      // ),
    // );
  // }
// }
import 'package:flutter/material.dart';
import 'views/todo_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TodoScreen());
  }
}
