import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}): super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    TextEditingController _namecontroller=TextEditingController();
    TextEditingController _regcontroller=TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Student Details"),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _namecontroller,
              decoration: InputDecoration(
                hintText: 'Type your name',
                border: OutlineInputBorder()
              ),
            ),
            TextField(
              controller: _regcontroller,
              decoration:InputDecoration(
                hintText: 'Register number',
                border: OutlineInputBorder()
              ) ,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>NextPage(
                          reg: _regcontroller.text,
                          name: _namecontroller.text,
                        ),
                    ),
                );
              },
              child:Text("Submit"),
            ),
          ],
        ),
      ),
      );
  }
}
class NextPage extends StatelessWidget {

   final String name;
   final String reg;

  NextPage({required this.name,required this.reg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Details")),
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Your name: $name',
                style: TextStyle(fontSize: 30 ),
              ),
              Text('Your register number: $reg',
                style: TextStyle(fontSize: 30 ),
              ),
            ],

          ),
        ),
    );
  }
}
