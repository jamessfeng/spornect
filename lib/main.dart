import 'package:flutter/material.dart';
import 'package:spornect/user_profile.dart';
import 'package:spornect/test.dart';

import 'home.dart';
import 'loading.dart';
import 'user_profile.dart';

void main() {
  runApp(MaterialApp(
      initialRoute: '/loading',
      routes: {
        '/': (context) => Home(),
        '/userprofile': (context) => UserProfile(),
        '/test': (context) => HomePage(),
        '/loading': (context) => Loading(),

      }
  ));
}


