
import 'package:flutter/material.dart';

import '../widgets/loginForm.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late Color myColor;
  late Size mediaSize;



  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;


    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bgColor.png"),
          fit: BoxFit.cover,

        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(top: 70,child:buildTop(context) ),
            Positioned(bottom: 0,child: buildBottom(context))
          ],
        ),
      ),
    );
  }
}

Widget buildTop(context){
  return Container(
    width: MediaQuery.of(context).size.width,
    child: Column(
      children: [
        Image.asset("assets/images/shoppingCover.png",),
        // const Text(
        //   "Let's Shopping",
        //   style: TextStyle(
        //       color: Colors.white,
        //       fontWeight: FontWeight.bold,
        //       fontSize: 20,
        //       ),
        // )

      ],
    ),
  ) ;

}

Widget buildBottom(context){

  return Container(
    width: MediaQuery.of(context).size.width,
    child: const Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: LoginForm(),
       // child: CustomTxtField(EmailController: EmailController),
      ),
    ),
  );
}

