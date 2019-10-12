import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context){
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: [
            emailField(),
            pwdField(),
            //submitButton()
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        icon: Icon(Icons.email),
        hintText: 'Enter Email', 
      ),
    );
  }
  Widget pwdField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        icon: Icon(Icons.vpn_key),
        hintText: 'Enter Password', 
      ),
    );
  }
  Widget submitButton() {

  }
}