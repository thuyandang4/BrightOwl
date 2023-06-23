// import 'package:flutter/material.dart';
// import 'welcome.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         useMaterial3: true,
//       ),
//       home: const WelcomePage(),
//     );
//   }
// }

import 'package:brightowl_frontend/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // removes debug banner
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const NetworkImage(
                'https://www.nocontractvoip.com/wp-content/uploads/2023/01/8-Tech-Checks-to-Make-Before-You-Travel-scaled-1.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                child: const Image(
                  image: AssetImage(
                    'assets/ollieClear.png',
                  ),
                  width: 250,
                  height: 250,
                ),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 5.0),
                  color: Colors.transparent,
                  child: const Text(
                    "Hi, I'm Ollie!",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'Inter',
                      color: Colors.white,
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                  color: Colors.transparent,
                  child: Text(
                    'Welcome to Bright Owl!',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 55.0,
                        letterSpacing: 1.2,
                        height: 1.1,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  )),
              Container(
                padding: const EdgeInsets.fromLTRB(80.0, 30.0, 80.0, 10.0),
                color: Colors.transparent,
                child: const Text(
                  'Receive 24/7 tutoring anytime, anywhere.',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Inter',
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(50.0, 60.0, 50.0, 25.0),
                  color: Colors.transparent,
                  child: Center(
                      child: ElevatedButton(
                          onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignupScreen()))
                            },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'I want to learn',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 22.0,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(width: 13),
                              Image.asset(
                                  alignment: Alignment.center,
                                  'assets/studenticon2.png',
                                  width: 36.0,
                                  height: 30.0,
                                  fit: BoxFit.contain)
                            ],
                          )))),
              Container(
                  padding: const EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 25.0),
                  color: const Color.fromRGBO(0, 0, 0, 0),
                  child: Center(
                    child: ElevatedButton(
                        onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignupScreen()))
                            },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'I want to teach  ',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 22.0,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(width: 4),
                              Image.asset(
                                  alignment: Alignment.center,
                                  'assets/teacher.png',
                                  width: 37.0,
                                  height: 30.0,
                                  fit: BoxFit.contain)
                            ])),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
