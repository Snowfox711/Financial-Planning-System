import 'package:flutter/material.dart';
import 'package:mriq/Screens/home.dart';
import 'package:mriq/Screens/statistics.dart';
import 'package:mriq/lib/widgets/bottomnavigationbar.dart';
import 'package:mriq/widgets/bottomnavigationbar.dart';
import 'package:mriq/lib/widgets/chart.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'lib/data/model/add_date.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom(appBar: null,),
    );
  }
}
