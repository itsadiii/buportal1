import 'package:portal/pages/login_page.dart';
import 'package:portal/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:portal/component/my_button.dart';
class LoginPageOrRegister extends StatefulWidget {
  const LoginPageOrRegister({super.key});


  @override
  State<LoginPageOrRegister> createState() => _LoginPageOrRegisterState();
}

class _LoginPageOrRegisterState extends State<LoginPageOrRegister> {
  @override

  bool showLoginPage = true;

  void togglePages(){
    setState(() {
      
   
    showLoginPage = !showLoginPage;
     });
  }
  Widget build(BuildContext context) {
    if (showLoginPage){
    return LoginPage(onTap: togglePages,

); 
      
     }
     else {
      return RegisterPage(onTap: togglePages, showLoginPage: () {  },);
     }
}
}
 