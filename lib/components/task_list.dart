// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../BLoC/bloc/task_bloc.dart';
// // import 'BLoC/bloc/task_bloc.dart';
// import '../models/task.dart';

// class TaskList extends StatelessWidget {
//   final List<Task> tasks;

//   const TaskList({Key? key, required this.tasks}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: tasks.length,
//       itemBuilder: (context, index) {
//         final task = tasks[index];
//         return ListTile(
//           title: Text(task.title),
//           subtitle: Text(task.description),
//           trailing: Checkbox(
//             value: task.isCompleted,
//             onChanged: (value) {
//               context.read<TaskBloc>().add(UpdateTask(task.copyWith(isCompleted: value)));
//             },
//           ),
//         );
//       },
//     );
//   }
// }
