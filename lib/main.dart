import 'package:book_app/constants.dart';
import 'package:book_app/screens/home_screen.dart';
import 'package:book_app/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kBlackColor)),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  //const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Bitmap.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.displayLarge,
                    children: const [
                      TextSpan(
                        text: "flamin",
                      ),
                      TextSpan(
                        text: "go.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .6,
                  child: RoundedButton(
                    text: "Start reading",
                    fontSize: 20,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomeScreen();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            )));
  }
}
