import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 44, left: 24, right: 24, bottom: 20),
            color: Colors.deepPurpleAccent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(color: Colors.white, width: 100, height: 100),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          _myText("Name", 16),
                          _myText("24 years old", 14),
                          SizedBox(height: 6),
                          _myText("Martial status", 16),
                          _myText("Unmarried", 14),
                          SizedBox(height: 6),
                          Container(padding: EdgeInsets.all(4), color: Colors.blue, child: _myText("PLUS PLAN - 1 DAY LEFT", 12)),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: OutlineButton(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    onPressed: () {},
                    child: _myText("CHANGE PLAN", 16),
                  ),
                ),
                Text(
                  "Higher plans give you more connects",
                  style: TextStyle(fontSize: 10, color: Colors.white70),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildCard1(),
                _buildCard(size: 70, color: Colors.deepOrange),
                _buildCard(size: 80, color: Colors.purple),
                _buildCard(size: 90, color: Colors.pink),
                _buildCard(size: 100, color: Colors.grey),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _myText(String data, double size) => Text(data, style: TextStyle(fontSize: size, color: Colors.white));

  Widget _buildCard1() {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("PROFILE DETAILS"),
          ),
          Placeholder(fallbackHeight: 200),
          Divider(),
          SizedBox(
            width: double.maxFinite,
            child: FlatButton(
              onPressed: () {},
              child: Text("UPDATE MY PROFILE"),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard({double size, Color color}) {
    return Card(
      margin: EdgeInsets.all(12),
      child: Container(height: size, color: color,),
    );
  }
}