import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  Widget build(context){
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            Container(margin: EdgeInsets.only(top: 15.0),),
            pwdField(),
            Container(margin: EdgeInsets.only(top: 30.0),),
            submitButton()
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
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        icon: Icon(Icons.vpn_key),
        hintText: 'Enter Password', 
      ),
    );
  }
  Widget submitButton() {
    return RaisedButton(
      onPressed: (){
        formKey.currentState.reset();
      },
      //color: Colors.blue,
      child: Text('Login Now!'),
    );
  }
}