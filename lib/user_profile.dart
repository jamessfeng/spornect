import 'package:flutter/material.dart';
import 'package:spornect/user.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  // User instance = User(name: 'Eren Jeager', age: 22, height: 180, position: 'Wing Spiker');
  // User instance1 = User(name: 'Mikasa', age: 22, height: 180, position: 'Wing Spiker');
  // User instance2 = User(name: 'Armin', age: 22, height: 180, position: 'Wing Spiker');
  // User instance3 = User(name: 'Levi', age: 22, height: 180, position: 'Wing Spiker');
  // User instance4 = User(name: 'Reiner', age: 22, height: 180, position: 'Wing Spiker');
  Map data = {};

  // }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 44, left: 24, right: 24, bottom: 20),
              // padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
              color: Colors.deepPurpleAccent,
              child: Column(
                // mainAxisAlignment: ,
                children: [
                  Row(
                    // crossAxisAlignment: ,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.asset('assets/eren.jpg'),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow, width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _myText("${data['name']}", 20),
                            SizedBox(height: 6),
                            _myText("${data['age']} years old", 16),
                            _myText("${data['height']} cms", 16),
                            _myText("${data['position']}", 16),
                            // _myText("${instance.name}", 20),
                            // SizedBox(height: 6),
                            // _myText("${instance.age} years old", 16),
                            // _myText("${instance.height} cms", 16),
                            // _myText("${instance.position}", 16),
                          ],
                        ),
                      ),
                    ]
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.maxFinite,
                    child: OutlineButton(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                      onPressed: () {},
                      child: _myText("Update Profile", 16),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView(
                  children: [
                    _buildCard(size: 200, color: Colors.white, text: "Spiking", url: "assets/face1.jpg"),
                    _buildCard(size: 200, color: Colors.white, text: "Setting", url: "assets/face1.jpg"),
                    _buildCard(size: 200, color: Colors.white, text: "Digging", url: "assets/face1.jpg"),
                    _buildCard(size: 200, color: Colors.white, text: "Serving", url: "assets/face1.jpg"),

                  ],
                )
            )
          ],
        ),
    );
  }

}

Widget _myText(String data, double size) => Text(data, style: TextStyle(fontSize: size, color: Colors.white));
Widget _buildCard({double size, Color color, String text, String url}) {
  // return Card(
  //   margin: EdgeInsets.all(12),
  //   child: Container(height: size, color: color,),
  // )
  return Card(
    child: Container(
      height: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/face1.jpg"),
          // fit: BoxFit.fill,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Text(text),
    ),
  );
}