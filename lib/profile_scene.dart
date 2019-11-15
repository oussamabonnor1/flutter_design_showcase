import 'package:flutter/material.dart';

class ProfileScene extends StatefulWidget {
  @override
  _ProfileSceneState createState() => _ProfileSceneState();
}

class _ProfileSceneState extends State<ProfileScene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text("Profile Showcase"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey[900],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("images/pewds.jpg"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "NAME",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[400],
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "PewDiePie",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.amberAccent,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.grey[800],
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Followers",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[400],
                            letterSpacing: 2,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "103 Millions",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.amberAccent,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.grey[700],
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Videos",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[400],
                            letterSpacing: 2,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "+1780",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.amberAccent,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.mail,
                        color: Colors.amberAccent,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "pewdiepie@gmail.com",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[400],
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.amberAccent,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "+689 878 555",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[400],
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      followButton(
                          Icons.person_add, Colors.amberAccent, "Follow"),
                      buildSharingButtons(
                          Icons.message, Colors.amberAccent, "Send message"),
                      buildSharingButtons(
                          Icons.share, Colors.amberAccent, "Share"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool follow = true;

  Widget buildSharingButtons(IconData icon, Color color, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 12,
                color: Colors.grey[400],
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }

  Widget followButton(IconData icon, Color color, String text) {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.person_add),
          color: !follow ? Colors.grey[400] : color,
          onPressed: (){
            setState(() {
              follow = !follow;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[400],
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
