import 'package:portal/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:portal/pages/loginpage_or_registerpage.dart';


import 'homepage.dart';
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          //usr login
          if (snapshot.hasData){
            return HomePage();

          }


          //nt logdin
          else{
            return LoginPageOrRegister();
          }
        
        },
      ),
    );
  }
}