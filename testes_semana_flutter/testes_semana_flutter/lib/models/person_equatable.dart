import 'package:equatable/equatable.dart';

class PersonEquatable extends Equatable{
  final String? name;
  
  const PersonEquatable({required this.name});
  
  @override
  List<Object?> get props => [
    name
  ];

}