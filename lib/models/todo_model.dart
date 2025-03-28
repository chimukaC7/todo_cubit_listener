import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

enum Filter {
  all,
  active,
  completed,
}

Uuid uuid = Uuid();
//used when creating and editing

class Todo extends Equatable {

  final String id;
  final String desc;
  final bool completed;

  Todo({
    String? id,
    required this.desc,
    this.completed = false,
  }) : this.id = id ?? uuid.v4();

  @override
  List<Object> get props => [id, desc, completed];

  //making it human readable
  @override
  String toString() => 'Todo(id: $id, desc: $desc, completed: $completed)';
}
