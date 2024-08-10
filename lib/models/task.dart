import 'package:equatable/equatable.dart';

class Task extends Equatable {
  final String title;
  final String description;
  final bool isMandatory;
  final int points;
  final bool isCompleted;

  Task({
    required this.title,
    required this.description,
    this.isMandatory = false,
    this.points = 0,
    this.isCompleted = false,
  });

  Task copyWith({
    String? title,
    String? description,
    bool? isMandatory,
    int? points,
    bool? isCompleted,
  }) {
    return Task(
      title: title ?? this.title,
      description: description ?? this.description,
      isMandatory: isMandatory ?? this.isMandatory,
      points: points ?? this.points,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  @override
  List<Object?> get props => [title, description, isMandatory, points, isCompleted];
}
