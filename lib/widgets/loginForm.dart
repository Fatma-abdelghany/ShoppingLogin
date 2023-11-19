import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/customButton.dart';
import 'package:shopping_app/widgets/customTextField.dart';
import 'package:shopping_app/widgets/rememberForget.dart';

import 'greyText.dart';
class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController EmailController= TextEditingController();
    TextEditingController PasswordController= TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome",
          style: TextStyle(
              color: Theme.of(context).primaryColor, fontSize: 32, fontWeight: FontWeight.w500),
        ),
        GreyText(text:"Please login with your information",),
        const SizedBox(height: 40),
        //GreyText(text: "Email address"),
        CustomTextField(
            Controller: EmailController,
            isPassword: false,
            hint: "Email address",
            mySuffixIcon: Icon(Icons.mail),
            type:TextInputType.text

        ),
        const SizedBox(height: 10),
       // GreyText(text: "Password"),
        CustomTextField(
            Controller: PasswordController,
            isPassword: true,
            hint: "password",
            mySuffixIcon: Icon(Icons.remove_red_eye),
            type:TextInputType.visiblePassword

        ),
        const SizedBox(height: 10),
        BuildRememberForget(),
        const SizedBox(height: 10),

        CustomButton(text:"Login"),
        const SizedBox(height: 10),
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






    );
  }
}
