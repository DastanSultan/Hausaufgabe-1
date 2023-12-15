import 'package:flutter/material.dart';
import 'package:menu_app/new_page.dart';

void main() => runApp(MyDev());

class MyDev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  MyDevState createState() => MyDevState();
}

int count = 12;
Object minu = '';

class MyDevState extends State<MyApp> {
  void minus() {
    setState(() {
      if (count == 0) {
        count = 0;
        minu = 'Эң төмөнкү сан.';
      } else {
        count--;
        minu = '';
      }
    });
  }

  void plus() {
    setState(() {
      if (count == 10) {
        count = 10;
        minu = 'Эң жогорку сан.';
      } else {
        count++;
        minu = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Тапшырма 1 - 2'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 50, right: 50, bottom: 20, top: 20),
                  decoration: BoxDecoration(),
                  child: Text(
                    '$minu',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: Text('Сан: $count'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    child: ElevatedButton(
                  child: Text('-'),
                  onPressed: minus,
                )),
                Container(
                  child: ElevatedButton(
                    child: Text('+'),
                    onPressed: plus,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  child: ElevatedButton(
                    child: Text(
                      'Жаңы баракча',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                      ),
                    ),
                    onPressed: () => setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewPage(),
                          ));
                    }),
                  ),
                ),
                // Container(
                //   child: Image.asset('assets/IMG_2440.JPG'),
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
