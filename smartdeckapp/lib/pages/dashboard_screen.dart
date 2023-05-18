import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
  body: SafeArea(child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 30,
          ),

Container(
  color: const Color.fromARGB(255, 243, 107, 33),
  height:100,
  width:100,),
  Container(
  color: Color.fromARGB(255, 224, 71, 20),
  height:120,
  width:240,


)
        ],
      ),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height:175,
            width:175,
            color: Colors.red,
          ),
          Container(
            height:175,
            width:175,
            color: Colors.blue,
          ),
        ],
      ),
      

    Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height:175,
            width:175,
            color: Colors.green,
          ),
        ],
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, 
        children:[ 
     Container(
            height:75,
            width:100,
            color: Colors.green,
          ),
    
     Container(
            height:75,
            width:100,
            color: const Color.fromARGB(255, 30, 33, 30),
          ),
          ],
          )
          ],


  ),
  ),
    );
  }
}

