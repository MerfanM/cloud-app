import 'package:cloud_app/uidesign_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<AnimatedCircularChartState> _chartKey =
        new GlobalKey<AnimatedCircularChartState>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 70, 30, 0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF0052FF).withOpacity(0.12),
                      offset: Offset(0, 12),
                      blurRadius: 40,
                    )
                  ],
                ),
                width: double.infinity,
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFAFBFF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 60,
                        height: 60,
                        child: Center(
                          child: Image(
                            image: AssetImage('assets/menu icon.png'),
                            fit: BoxFit.cover,
                          ),
                        )),
                    Text(
                      'Hello, Kevin',
                      style: TextStyle(fontSize: 18),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFAFBFF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 60,
                        height: 60,
                        child: Center(
                          child: Image(
                            image: AssetImage('assets/search icon.png'),
                            fit: BoxFit.cover,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF7FAFF),
                  borderRadius: BorderRadius.circular(25),
                ),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Storage',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xFF1A64FF).withOpacity(0.03),
                                ),
                                width: 100,
                                height: 100,
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xFF0052FF)
                                                .withOpacity(0.15),
                                            blurRadius: 20,
                                            offset: Offset(0, 25))
                                      ],
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFE5EEFF),
                                          Colors.white,
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      )),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Text(
                                        'GB',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: AnimatedCircularChart(
                                key: _chartKey,
                                size: Size(200, 200),
                                initialChartData: <CircularStackEntry>[
                                  CircularStackEntry(
                                    <CircularSegmentEntry>[
                                      CircularSegmentEntry(
                                        60,
                                        Color(0xFF0052FF),
                                        rankKey: 'free space',
                                      ),
                                      CircularSegmentEntry(
                                        10,
                                        Color(0xFF00D9FF),
                                        rankKey: 'used space',
                                      ),
                                      CircularSegmentEntry(
                                        30,
                                        Colors.white.withOpacity(0.0),
                                        rankKey: 'nothing',
                                      ),
                                    ],
                                    rankKey: 'storage',
                                  ),
                                ],
                                chartType: CircularChartType.Radial,
                                edgeStyle: SegmentEdgeStyle.round,
                                percentageValues: false,
                                startAngle: 90,
                                holeRadius: 55,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xFF0052FF),
                                  radius: 5,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Free Space",
                                  style: TextStyle(
                                    color: Color(0xFF0052FF),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xFF00D9FF),
                                  radius: 5,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Used Space",
                                  style: TextStyle(
                                    color: Color(0xFF00D9FF),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        width: double.infinity,
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFFAFBFF),
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                width: 50,
                                height: 50,
                                child: Center(
                                  child: Image(
                                    image: AssetImage('assets/fire.png'),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            Text(
                              'Upgrate!',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF0052FF),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'My Clouds',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CloudContainer(name: "UI Design", number: "15", documents: "55"),
              SizedBox(
                height: 20,
              ),
              CloudContainer(name: "UX Design", number: "10", documents: "30"),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CloudContainer extends StatelessWidget {
  final String name;
  final String documents;
  final String number;

  const CloudContainer({
    this.documents,
    this.number,
    this.name,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UIScreen(),
            ));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Color(0xFFF7FAFF),
          borderRadius: BorderRadius.circular(25),
        ),
        width: double.infinity,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Image(
                  image: AssetImage("assets/Folder.png"),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name),
                    SizedBox(height: 10),
                    Text(
                      '$documents documents',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Text(
                  number,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xFF0052FF)),
                ),
                Text(
                  ' /25 GB',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xFF0052FF).withOpacity(0.3)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
