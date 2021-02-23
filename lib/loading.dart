import 'package:flutter/material.dart';
import 'package:spornect/user.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

  void setupUser () {
    User instance = User(name: 'Eren Jeager', age: 22, height: 180, position: 'Wing Spiker');
    User instance1 = User(name: 'Mikasa', age: 22, height: 180, position: 'Wing Spiker');
    User instance2 = User(name: 'Armin', age: 22, height: 180, position: 'Wing Spiker');
    User instance3 = User(name: 'Levi', age: 22, height: 180, position: 'Wing Spiker');
    User instance4 = User(name: 'Reiner', age: 22, height: 180, position: 'Wing Spiker');
    print(instance.name);
    Navigator.pushReplacementNamed(context, '/userprofile', arguments: {
      'name': instance.name,
      'age': instance.age,
      'height': instance.height,
      'position': instance.position,
    });

  }
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FlatButton(
          child: Text('View Details'),
          onPressed: () {
            setupUser();
          },
        ),
      ),
    );
  }
}
