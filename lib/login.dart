import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage (
              image: AssetImage ('assets/background.png') , fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30, top: 160),
                child: Text('Welcome',style: TextStyle(
                  color: Colors.black87,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.35,
                          right : 35 ,
                          left: 35),
                      child: Column(
                          children:[
                            TextField(
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'Email',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'Password',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text ( ' Sign in ' ,style: TextStyle(
                                color: Colors.black87,
                                fontSize: 35,
                                fontWeight: FontWeight.w700,),
                              ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.blueAccent,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(onPressed:(){
                                  Navigator.pushNamed(context, 'register');
                                },
                                    child:
                                    Text(' Sign up ', style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 22,
                                      color: Colors.blueAccent,
                                    ),)),
                                TextButton(onPressed:(){},
                                    child:
                                    Text(' Forgot Password ', style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 22,
                                      color: Colors.blueAccent,
                                    ),))
                              ],
                            )

                          ]
                      )
                  ) )
            ]),
      ),
    );
  }
}
// TODO Implement this library.