import 'package:flutter/material.dart';

import './second.dart';

class First extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Second()),
              );
            },
          ),
          title: Text('AppBarTitle'),
          centerTitle: true,
          actions: [
            Container(
              child: Icon(Icons.location_on),
              margin: EdgeInsets.all(10.0),
            ),
            Container(
              child: Icon(Icons.phone),
              margin: EdgeInsets.all(10.0),
            ),
          ],
          toolbarHeight: 80,
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
          width: double.infinity,
          height: 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.grey,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                  width: 60.0,
                  height: 80.0,
                  child: Icon(
                    Icons.offline_pin_outlined,
                    size: 50,
                    color: Colors.pink,
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Plan The Trip To Finland',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('The family trip to finland'),
                    Text('next summer'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.add_alert,
                      color: Colors.pink,
                    ),
                    Text('Yesterday')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
