import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var box = Match();

  List<Match> matchlist = [
    Match(
        matchName: "ECS T10 - Bulgarian",
        teamName1: "Indo-Bulgarian CC",
        teamName2: "Indian - Tuskers",
        teamSName1: "IND",
        teamSName2: "PAK",
        teamImage1: "assets/icon/india.png",
        teamImage2: "assets/icon/pakistan.png"),
    Match(
        matchName: 'Shpageeza T20 League',
        teamName1: "Amo Sharks",
        teamName2: "Mis Ainak Knights",
        teamSName1: "AS",
        teamSName2: "MAK",
        teamImage1: "assets/icon/adk.png",
        teamImage2: "assets/icon/afghanistan.png"),
    Match(
        matchName: "ECS T10 - Romania",
        teamName1: "Indian Cricket Club",
        teamName2: "United Cricket Club",
        teamSName1: "ICC",
        teamSName2: "UCC",
        teamImage1: "assets/icon/australia.png",
        teamImage2: "assets/icon/bangladesh.png"),
    Match(
        matchName: 'Shpageeza T20 League',
        teamName1: "Amo Sharks",
        teamName2: "Mis Ainak Knights",
        teamSName1: "AS",
        teamSName2: "MAK",
        teamImage1: "assets/icon/adk.png",
        teamImage2: "assets/icon/afghanistan.png"),
    Match(
        matchName: "ECS T10 - Bulgarian",
        teamName1: "Indo-Bulgarian CC",
        teamName2: "Indian - Tuskers",
        teamSName1: "IND",
        teamSName2: "PAK",
        teamImage1: "assets/icon/india.png",
        teamImage2: "assets/icon/pakistan.png"),
    Match(
        matchName: "ECS T10 - Romania",
        teamName1: "Indian Cricket Club",
        teamName2: "United Cricket Club",
        teamSName1: "ICC",
        teamSName2: "UCC",
        teamImage1: "assets/icon/australia.png",
        teamImage2: "assets/icon/bangladesh.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          // Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 25,
                  width: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Upcoming Matches",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // FirstBox(),
          ListView.builder(
              // scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: matchlist.length,
              itemBuilder: (BuildContext context, index) {
                return FirstBox(
                  match: matchlist[index],
                );
              })
        ],
      ),
    );
  }
}

class FirstBox extends StatelessWidget {
  final Match match;
  FirstBox({
    Key key,
    this.match,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Card(
        // color: Colors.white,
        elevation: 10,
        clipBehavior: Clip.hardEdge,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
                colors: [Colors.white, Colors.black12]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                // color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(7),
                  child: Text(
                    match.matchName,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey[300],
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(match.teamName1),
                    Text(match.teamName2),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      match.teamImage1,
                      height: 30,
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        match.teamSName1,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Text("VS"),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        match.teamSName2,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Image.asset(
                      match.teamImage2,
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 5)),
                      Container(
                          height: 15,
                          width: 27,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green[100],
                              ),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green[100]),
                          child: Padding(
                            padding: EdgeInsets.all(3),
                            child: Text(
                              "MEGA",
                              style: TextStyle(
                                  color: Colors.green[700],
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Text("₹10 Lakhs"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Match {
  String matchName;
  String teamName1;
  String teamName2;
  String teamImage1;
  String teamImage2;
  String teamSName1;
  String teamSName2;

  Match(
      {this.matchName,
      this.teamImage2,
      this.teamName1,
      this.teamName2,
      this.teamSName1,
      this.teamSName2,
      this.teamImage1});

  // Map toJson() => {
  //       'matchName': matchName,
  //       'teamName1': teamName1,
  //       'teamName2': teamName2,
  //       'teamSName1': teamSName1,
  //       'teamSName2': teamSName2,
  //       'teamImage1': teamImage1,
  //       'teamImage2': teamImage2,
  //     };
}

// var match = {
//   "matchName": "ECS T10 - Romania",
//   "teamName1": "Indian Cricket Club",
//   "teamName2": "United Cricket Club",
//   "teamSName1": "ICC",
//   "teamSName2": "UCC",
//   "teamImage1": "assets/icon/australia.png",
//   "teamImage2": "assets/icon/bangladesh.png",
// };
