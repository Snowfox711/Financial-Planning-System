import 'package:flutter/material.dart';
import 'package:mriq/Screens/add.dart';
import 'package:mriq/Screens/home.dart';
import 'package:mriq/Screens/statistics.dart';

import '../Screens/Profile.dart';
import '../Screens/add.dart';
import '../Screens/budget.dart';
/*
import '../lib/Screens/add.dart'
import '../lib/Screens/budget.dart';
import '../lib/Screens/home.dart';
import '../lib/Screens/statistics.dart';

 */

class Bottom extends StatefulWidget {
  const Bottom({Key? key, required appBar}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index_color = 0;
  List Screen = [Home(), Statistics(), budget(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: Text('MRiQ'),
        centerTitle: true,
      ),


      body: Screen[index_color],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Add_Screen()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 0;
                  });
                },
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: index_color == 0 ? Colors.deepPurple : Colors.grey,
                ),
              ),

              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 1;
                  });
                },
                child: Icon(
                  Icons.bar_chart_outlined,
                  size: 30,
                  color: index_color == 1 ? Colors.deepPurple : Colors.grey,
                ),
              ),
              SizedBox(width: 10),

              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 2;
                  });
                },
                child: Icon(
                  Icons.account_balance_wallet_outlined,
                  size: 30,
                  color: index_color == 2 ? Colors.deepPurple : Colors.grey,
                ),
              ),


              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 3;
                  });
                },
                child: Icon(
                  Icons.person_outlined,
                  size: 30,
                  color: index_color == 3 ? Colors.deepPurple : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
