import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Cridge_Admin',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The BridgeAdmin'),
        leading: Image.asset('images/logo.png'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First Row - Blue Square 1 to 4
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 320,
                  width: 300,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 91, 223, 247),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'ADD Courses',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      SizedBox(height: 15,),
                      ElevatedButton(
                        onPressed: () {
                          print('Bouton "ADD image" appuyé');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(194, 70, 243, 1),
                        ),
                        child: Text('Add Image'),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Name Course',
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Price',
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          print('Bouton "ADD image" appuyé');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(33, 218, 88, 1),
                        ),
                        child: Text('Add Course'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 320,
                  width: 300,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 212, 177, 18),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Delete Course',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Name Course',
                        ),
                      ),
                      
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          print('Bouton "Delete Course" appuyé');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(219, 66, 20, 1),
                        ),
                        child: Text('Delete Course'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 320,
                  width: 300,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 91, 223, 247),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Update Courses',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      SizedBox(height: 15,),
                      ElevatedButton(
                        onPressed: () {
                          print('Bouton "Modify image" appuyé');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(194, 70, 243, 1),
                        ),
                        child: Text('Update Image'),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Name Course',
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Price',
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          print('Bouton "Modify image" appuyé');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(107, 218, 33, 1),
                        ),
                        child: Text('Modify Course'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 320,
                  width: 300,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 91, 247, 112),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Liste Courses',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          print('Bouton "liste course" appuyé');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(65, 62, 221, 1),
                        ),
                        child: Text('Liste Courses'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Second Row - Blue Square 5 to 8
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 320,
                  width: 300,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 120, 91, 247),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Liste the Client',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                     
                      
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          print('Bouton "Liste Client" appuyé');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(218, 215, 33, 1),
                        ),
                        child: Text('Liste Client'),
                     ),
                    ],
                  ),
                ),
                Container(
                  height: 320,
                  width: 300,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 152, 178, 228),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Affiche the Contact ',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                     
                      
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          print('Bouton "Affiche" appuyé');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(218, 33, 187, 1),
                        ),
                        child: Text('Affiche'),
                     ),
                    ],
                  ),
                ),
              ],
            ),
          ],
      ),

    ));
  }
}
