import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  static const routeName = '/profile';

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          /*
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                "Settings",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),

           */

          /*
          // tou xiang
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 5),
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/Food.png'),
              ),
            ),
          ),

          // username
          Align(

            alignment: Alignment.topCenter,
            child: Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 15),
                child: Text(
                  "Gwi",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
          ),
           */

          // Functions
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  /*
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      size: 22,
                      color: Colors.greenAccent,
                    ),
                    title: Text("Preferences"),
                    //trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),

                   */
                  ListTile(
                    leading: Icon(
                      Icons.file_copy_rounded,
                      size: 22,
                      color: Colors.deepPurple,
                    ),
                    title: Text("Export"),
                    //trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.nights_stay_outlined,
                      size: 22,
                      color: Colors.deepPurple,
                    ),
                    title: Text("Dark Mode"),
                    //trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.language,
                      size: 22,
                      color: Colors.deepPurple,
                    ),
                    title: Text("Language"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.currency_exchange,
                      size: 22,
                      color: Colors.deepPurple,
                    ),
                    title: Text("Currency"),
                    //trailing: Icon(Icons.question_mark),
                  ),
                  Divider(),
                ],
              ),
            ),
          ),

          /*
          // log out
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.deepPurpleAccent)),
                onPressed: () {},
                child: Text(
                  "Log Out",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
          */
        ],
      )
    );
  }
}

