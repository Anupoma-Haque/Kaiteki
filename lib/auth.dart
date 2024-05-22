import 'package:flutter/material.dart' show AssetImage, BoxDecoration, BoxFit, BuildContext, Colors, Column, Container, DecorationImage, EdgeInsets, FontWeight, MediaQuery, Scaffold, SingleChildScrollView, Stack, State, StatefulWidget, Text, TextStyle, Widget;
class MyAuth extends StatefulWidget {
  const MyAuth({super.key});

  @override
  State<MyAuth> createState() => _MyAuthState();
}

class _MyAuthState extends State<MyAuth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage ('assets/logo.png') ,
            fit: BoxFit.fill)
        ),
      child: Scaffold(
      backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, top: 140),
             child: Text('Authentication',
               style: TextStyle(color: Colors.black,
                 fontSize: 50,
                 fontWeight: FontWeight.bold,),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.35,
                    right : 35 ,
                    left: 35),
                child: Column(
                  children: [

              ],

                ),
              ),
            )
          ],
        ),
    ));
  }
}
