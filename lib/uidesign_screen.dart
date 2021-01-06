import 'package:flutter/material.dart';

class UIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF00D9FF),
        child: Image(image: AssetImage("assets/plus.png")),
        elevation: 20,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
      ),
      bottomSheet: Padding(padding: EdgeInsets.only(bottom: 50.0)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 70, 30, 0),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF7FAFF),
                  borderRadius: BorderRadius.circular(25),
                ),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 60,
                              height: 60,
                              child: Center(
                                child: Image(
                                  image: AssetImage('assets/left.png'),
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 60,
                              height: 60,
                              child: Center(
                                child: Image(
                                  image: AssetImage('assets/points.png'),
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ],
                      ),
                      SizedBox(height: 30),
                      Image(
                        image: AssetImage("assets/Folder.png"),
                        width: 30,
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "UI Design",
                        style: TextStyle(
                          fontSize: 35,
                          color: Color(0xFF0052FF),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "55 documents",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[400],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/file.png"),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "15.9 GB of 25 GB used",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 20),
                            Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 9,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  height: 9,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Color(0xFF0052FF),
                                      Color(0xFF00D9FF),
                                    ]),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 17,
                                    child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Image(
                                          image:
                                              AssetImage("assets/person1.png")),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 17,
                                    child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Image(
                                          image:
                                              AssetImage("assets/person2.png")),
                                    ),
                                  ),
                                  left: 20,
                                ),
                                Positioned(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 17,
                                    child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Image(
                                          image:
                                              AssetImage("assets/person3.png")),
                                    ),
                                  ),
                                  left: 40,
                                ),
                                Positioned(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 17,
                                    child: Container(
                                      margin: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Color(0xFFF7FAFF),
                                      ),
                                      child: Text(
                                        "+5",
                                        style: TextStyle(
                                          color: Color(0xFF0052FF),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  left: 60,
                                ),
                              ],
                              overflow: Overflow.visible,
                            ),
                            Text(
                              "+ Add Member",
                              style: TextStyle(
                                color: Color(0xFF0052FF),
                                fontSize: 15,
                              ),
                            )
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
              Row(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ExpandedWidget(
                      title: "Rent Car Kit", subtitle: "By Mohammad"),
                  SizedBox(
                    width: 20,
                  ),
                  ExpandedWidget(title: "Zone Kit", subtitle: "By Alidoost"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const ExpandedWidget({
    Key key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        margin: EdgeInsets.only(bottom: 30),
        decoration: BoxDecoration(
          color: Color(0xFFF7FAFF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              child: Image(image: AssetImage("assets/diamond.png")),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color(0xFFFDAD00).withOpacity(0.6),
                    blurRadius: 50,
                    offset: Offset(0, 5))
              ]),
            ),
            SizedBox(height: 15),
            Text(title),
            SizedBox(height: 15),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
