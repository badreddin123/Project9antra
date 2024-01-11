import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Cridge',
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
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('The Bridge'),
        leading: Image.asset('images/logo.png'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: screenWidth, // Set the width to the screen width
                  height: 300,
                  child: Image.asset('images/backgroud.jpg', fit: BoxFit.cover), // Use BoxFit.cover to cover the full width
                ),
                Container(
                  height: 200,
                  width: 700,
                  color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                 'Improve your skills on your own To prepare for a better future',
                  style: TextStyle(
                 fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
    
                ),
                 ),
                 SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {
                      // Action à effectuer lorsqu'on appuie sur le bouton "View"
                      print('Bouton "Register Now" appuyé');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(159, 43, 212, 1),
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40), // Set the border radius
                           ),
                    ),
                    child: Text('Register Now'),
                  ),
                 
                ],
                 ),
                ),
              ],
            ),

            // Courses section
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Title
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Découvrez nos cours                            ',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Bouton View
                  ElevatedButton(
                    onPressed: () {
                      // Action à effectuer lorsqu'on appuie sur le bouton "View"
                      print('Bouton "View" appuyé');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(159, 43, 212, 1),
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40), // Set the border radius
                           ),
                    ),
                    child: Text('View More'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            // Courses
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCourse('images/spring_angular.jpg', 'Spring Boot/Angular', '350 DT/mois'),
                buildCourse('images/node_react.jpg', 'Node JS/React', '350 FT/mois'),
                buildCourse('images/flutter_firebase.jpg', 'Flutter/Firebase', '350 DT/mois'),
              ],
            ),

            // Blue Square
            Container(
              // Adjust the width as needed
              height: 320,
              width: 500, // Adjust the height as needed

              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 214, 101),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                children: [
                  Text(
                    'Contact Us',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Message',
                    ),
                    maxLines: 3,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Action à effectuer lorsqu'on appuie sur le bouton "Send the message"
                      print('Bouton "Send the message" appuyé');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(159, 43, 212, 1),
                    ),
                    child: Text('Send the message'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCourse(String imagePath, String courseName, String price) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: 100,
          ),
          SizedBox(height: 5),
          Text(
            courseName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            price,
            style: TextStyle(
              fontSize: 16,

              color: Color.fromRGBO(159, 43, 212, 1),
            ),
          ),
        ],
      ),
    );
  }
}
