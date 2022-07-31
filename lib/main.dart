import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Lesson26(),
    );
  }
}

class Lesson26 extends StatelessWidget {
  const Lesson26({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
            SizedBox(
              width: 104,
            ),
            Text(
              'Список фраз',
              style: TextStyle(color: Color(0xff333333), fontSize: 16),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 35, top: 42, right: 35),
        child: Column(
          children: [
            SizedBox(
              width: 343,
              height: 44,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xffC4C4C4)),
                      borderRadius: BorderRadius.circular(10)),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Qwe(),
            Qwe(),
            Qwe()
          ],
        ),
      ),
    );
  }
}

class Qwe extends StatelessWidget {
  const Qwe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 98,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'I want to call a taxi',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    Row(children: [
                      Containercart(text: 'TRANSPORT'),
                      SizedBox(
                        width: 30,
                      ),
                      Containercart(text: 'RESTAURANT'),
                    ]),
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  size: 40,
                  color: Colors.blue,
                ),
              ],
            )
            ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Divider(
            thickness: 1,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class Containercart extends StatelessWidget {
  final String text;
  const Containercart({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {},
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xffF2F2F2),
            ),
          ),
        ));
  }
}
