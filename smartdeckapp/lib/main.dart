import 'package:flutter/material.dart';
import 'package:smartdeckapp/pages/login_screen.dart';



void main()
{
  runApp(SmartDeck());

}
class SmartDeck extends StatelessWidget {
  const SmartDeck({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Deck',
      theme: ThemeData(
primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.grey[300],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Times New Roman',
        useMaterial3: true,
      ),

      debugShowCheckedModeBanner: false,
      home:MyLogin(),
    );

  }
}
