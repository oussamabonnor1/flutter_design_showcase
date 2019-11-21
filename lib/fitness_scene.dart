import 'package:charts_flutter/flutter.dart' as chart;
import 'package:flutter/material.dart';
import 'package:flutter_design_showcase/FitnessScene/chart_brain.dart';

class FitnessScene extends StatefulWidget {
  @override
  _FitnessSceneState createState() => _FitnessSceneState();
}

class _FitnessSceneState extends State<FitnessScene> {
  Widget header = Row(
    children: <Widget>[
      CircleAvatar(
        backgroundImage: AssetImage("images/instructor.png"),
        radius: 60,
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Carley Jones",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "1280",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "477",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.fitness_center,
                        color: Color(0xFFF5907B),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Beginner",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    "120 hrs",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              LinearProgressIndicator(
                value: .32,
                backgroundColor: Color(0xFFF5907B),
              ),
            ],
          ),
        ),
      )
    ],
  );

  Widget trainingBar = Container(
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Training",
                    style: TextStyle(
                      fontSize: 32,
                      letterSpacing: 2,
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset.fromDirection(.5),
                            blurRadius: 3,
                            color: Colors.grey)
                      ],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Show All",
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    buildTrainingItem(Icons.favorite, "Cardio", "2 days ago"),
                    buildTrainingItem(
                        Icons.directions_run, "Running", "3 hours ago"),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );

  Widget statsBar = Container(
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Statistics",
                        style: TextStyle(
                          fontSize: 32,
                          letterSpacing: 2,
                          shadows: <Shadow>[
                            Shadow(
                                offset: Offset.fromDirection(.5),
                                blurRadius: 3,
                                color: Colors.grey)
                          ],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "This week",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontStyle: FontStyle.italic,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Show All",
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Card(
                elevation: 5,
                semanticContainer: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5907B),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Calories",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "160,7Kcal",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Time",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "01:24:13",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          height: 100,
                          width: 200,
                          child: chart.BarChart(
                            ChartBrain().series,
                            animate: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  static Widget buildTrainingItem(
      IconData icon, String title, String lastTime) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            icon,
            size: 25,
            color: Color(0xFFF5907B),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    color: Color(0xFFF5907B),fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                lastTime,
                style: TextStyle(
                    color: Colors.grey[400], fontStyle: FontStyle.italic),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fitness Showcase",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFFEFEFEF),
      ),
      body: Container(
        color: Color(0xFFEFEFEF),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: header,
            ),
            statsBar,
            trainingBar,
          ],
        ),
      ),
    );
  }
}
