import 'package:spornect/user.dart';

class Team{
  String name;
  // int age;
  // int height;
  // String position;
  Set<User> members;
  Team({this.name});
  void addMember(User member){
    members.add(member);
  }
  void removeMember(User member){
    members.remove(member);
  }
}