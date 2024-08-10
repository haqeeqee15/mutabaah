// import 'package:belajarroutes/models/task.dart';
// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// part 'task_event.dart';
// part 'task_state.dart';

// class TaskBloc extends Bloc<TaskEvent, TaskState> {
//   TaskBloc() : super(TaskInitial()) {
//     on<LoadTasks>(_onLoadTasks);
//     on<UpdateTask>(_onUpdateTask);
//   }

//   Future<void> _onLoadTasks(LoadTasks event, Emitter<TaskState> emit) async {
//     final prefs = await SharedPreferences.getInstance();
//     final taskJson = prefs.getStringList('tasks') ?? [];
//     final tasks = taskJson
//         .map((task) => Task.fromJson(Map<String, dynamic>.from(task)))
//         .toList();
//     emit(TasksLoaded(tasks: tasks));
//   }

//   void _onUpdateTask(UpdateTask event, Emitter<TaskState> emit) {
//     final state = this.state;
//     if (state is TasksLoaded) {
//       final tasks = state.tasks.map((task) {
//         return task.title == event.task.title ? event.task : task;
//       }).toList();
//       emit(TasksLoaded(tasks: tasks));
//       _saveTasks(tasks);
//     }
//   }

//   Future<void> _saveTasks(List<Task> tasks) async {
//     final prefs = await SharedPreferences.getInstance();
//     final taskJson = tasks.map((task) => task.toJson()).toList();
//     await prefs.setStringList('tasks', taskJson);
//   }
// }
