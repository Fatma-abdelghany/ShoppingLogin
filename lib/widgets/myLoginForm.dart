import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/rememberForget.dart';

import 'customButton.dart';
import 'customTextField.dart';
import 'greyText.dart';
class MyLoginForm extends StatefulWidget {
  const MyLoginForm({super.key});

  @override
  State<MyLoginForm> createState() => _MyLoginFormState();
}

class _MyLoginFormState extends State<MyLoginForm> {
  TextEditingController EmailController= TextEditingController();
  TextEditingController PasswordController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 32, fontWeight: FontWeight.w500),
                ),
                GreyText(text:"Please login with your information",),
                const SizedBox(height: 40),

                CustomTextField(
                    Controller: EmailController,
                    isPassword: false,
                    hint: "Email address",
                    mySuffixIcon: Icon(Icons.mail),
                    type:TextInputType.emailAddress

                ),
                const SizedBox(height: 15),

                CustomTextField(
                    Controller: PasswordController,
                    isPassword: true,
                    hint: "password",
                    mySuffixIcon: Icon(Icons.remove_red_eye),
                    type:TextInputType.visiblePassword

                ),
                const SizedBox(height: 15),
                BuildRememberForget(),
                const SizedBox(height: 15),

                CustomButton(text:"Signup"),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const Text('Does not have account?'),
                    TextButton(
                      child: const Text(
                        'Sign up',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
