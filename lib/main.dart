import "dart:math";
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foods',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var foods = [
  //   [
  //     'Pasul',
  //     'Dollme',
  //     'Gullash'
  //   ],
  //   [
  //     'Fli',
  //     'Oriz'
  //   ]
  // ];
  List<String> foods = [
    "Pasul",
    "Dollme",
    "Gullash"
  ];
  List<String> foods2 = [];
  // List<String> foods12 = [];
  //var list = [];
  //list= new List.from(foods).addAll(foods2);
  // var foods3 = foods + foods2;
  // Combining lists
  //gfg1.addAll(gfg2);
  @override
  void initState() {
    foods2.addAll(foods);
  }

  TextEditingController controller = TextEditingController();
  final _random = new Random();
  bool isDeleted = false;

  var randomIndex;

  //var foods3 = foods+foods2;
  //var list = new List.from(foods)..addAll(foods2);

  @override
  Widget build(BuildContext context) {
    randomIndex = foods[_random.nextInt(foods.length)];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Foods'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              height: 150,
              width: 200,
              color: Colors.cyan,
              child: Text(
                isDeleted ? foods[0] : foods2[0],
                style: TextStyle(fontSize: 40),
              ),
              //   child: ListView(
              //     shrinkWrap: true,
              //     children: foods.map((element) => Text(foods[0])).toList(),
              //     //children: foods.map((element) => Text(element)).toList(),
              //     // itemCount: foods.length,
              //     // itemBuilder: (context, index) {
              //     //   return foods[index];
              //     // },
              //   ),
            ),
            TextField(
              controller: controller,
              // onChanged: (str) {
              //   name = str;
              // },
              maxLength: 20,
            ),
            Text(''),
            RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Add Items',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    foods2.add(controller.text);

                    print(foods2);
                  });
                }),
            Text(''),
            RaisedButton(
                color: Colors.yellow,
                child: Text(
                  'Zgjedh',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    isDeleted ? foods.shuffle() : foods2.shuffle();
                  });

                  print(foods2);
                  //var element = getRandomElement(foods);
                  //print(foods[randomIndex]);

                  //var randomItem = (foods2..shuffle()).first;
                  //var element = foods[_random.nextInt(foods.length)];
                }),
            Text(''),
            RaisedButton(
              color: Colors.red,
              child: Text(
                'Delete List',
                // 'Print foods',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  isDeleted = true;
                  foods2.clear();
                  print(foods);
                  print(foods2);
                });

                //foods2.removeRange(3, foods2.length);
                //foods.addAll(foods);
                //print(foods);
              },
            ),
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// import './first.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: First(),
//     );
//   }
// }
