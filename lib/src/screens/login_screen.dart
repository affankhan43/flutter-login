import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

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
      validator: (String value){
        if(!value.contains('@')){
          return 'Invalid Email';
        }
      },
      onSaved: (String value){
        email = value;
      },
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
      validator: (String value){
        if(value.length < 4){
          return 'Password Length Must be upto 4 charachters';
        }
      },
      onSaved: (String value){
        password = value;
      },
    );
  }
  Widget submitButton() {
    return RaisedButton(
      onPressed: (){
        if(formKey.currentState.validate ()){
          formKey.currentState.save();
          print('Time to post $email and $password to API');
        }
      },
      //color: Colors.blue,
      child: Text('Login Now!'),
    );
  }
}