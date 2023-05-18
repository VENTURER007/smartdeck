import 'package:flutter/material.dart';
import 'package:smartdeckapp/pages/dashboard.dart';



void main()
{
  runApp(SmartDeck());

}
class SmartDeck extends StatelessWidget {
  const SmartDeck({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Dashboard(),
    );

  }
}
