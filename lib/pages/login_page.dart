


import 'package:portal/pages/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:portal/pages/authpage.dart';

import 'package:flutter/material.dart';
import 'package:portal/component/my_textfield.dart';
import 'package:portal/component/my_button.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
 
  LoginPage ({super.key, required  this.onTap });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 //txt edtng cntrlrs
 final emailController = TextEditingController();

 final passwordController = TextEditingController ();

 

 Future<void> signUserIn() async {
   showDialog(
    context: this.context,
    builder: (context){
      return const Center(
        child: CircularProgressIndicator(),
      );

    },
    );

  //sgn usr in
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailController.text,
    password: passwordController.text, 
    );
    Navigator.pop(this.context);
  } 
  on FirebaseAuthException catch (e){

     Navigator.pop(this.context);
    //wrong email
    if (e.code == 'user-not-found'){
      //shw error
      wrongEmailMessage(context);
    }  
      //wro  ng psswrd
    else if (e.code == 'wrong-password'){
        
        //shw eror
      wrongPasswordlMessage(context);
      }

    }
 }    

  //wrng email msg popup
  void wrongEmailMessage(context){
    showDialog(
      context: context, 
      builder: (context){
     return const  AlertDialog(
      backgroundColor: Color.fromARGB(255, 190, 190, 190),
      title: Text('Incorrect Email',
      style: TextStyle(color: Colors.black,fontWeight: 
      FontWeight.bold),),
     );
    },
    );
  }

  //wrng pswrd
  void wrongPasswordlMessage(context){
    showDialog(
      context: context, 
      builder: (context){
     return const  AlertDialog(
      backgroundColor: Color.fromARGB(255, 185, 184, 184),
      title: Text('Incorrect Password',
      style: TextStyle(color: Colors.black,fontWeight: 
      FontWeight.bold),),
     );
      }
    );
  
 }

  //sgn usr in
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       body: SafeArea(
         child: Center(
          child: SingleChildScrollView(
           child: Column(
            
            children: [
              const SizedBox(height: 5),
              
              
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                   
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0),
                      child: Image.asset('lib/images/bennett.png',width: 370,height: 150
                      ),
                    ),
                    
                  ],
                ),
              ),
              //SizedBox(height: 20),
    
              // Text('     WELCOME  🙏',style: TextStyle(fontSize: 20,
              // fontWeight: FontWeight.bold,
              // color: Color.fromARGB(255, 180, 14, 2)) ),
    
              SizedBox(height: 50),
    
              //username 
              Mytextfield(
                controller: emailController,
                hintText: 'Username',
                obscureText:  false,
              ),
    
              SizedBox(height: 30),
              
                
    
              
              // password 
               Mytextfield(
                controller: passwordController,
                hintText: 'password',
                obscureText: true,  
               ),
               
             SizedBox(height: 10),
              
            // frgt paswrd?  
           
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                
              
            
              
              //sign butt 
              Mybutton(
                text: "Sign In",
                onTap: signUserIn
                ),
    
    
                const SizedBox(height: 60),
    //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                    thickness: 1.0,
                    color: Colors.grey[400],
                  ), 
                  ),
                
                  Text('or continue with',style: TextStyle(fontSize: 17),),
                  Expanded(
                        child: Divider(
                    thickness: 1.0,
                    color: Colors.grey[400],
                  ) 
                      )
                  ],
                  ),
                ),
              
    
    
            
              
              
              SizedBox(height: 30,)
              ,
              //google+
              Center(child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal:20.0),
                 child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 60),
                    child: Image.asset('lib/images/google.png',
                    height: 72),)
                    ,
                    Padding(padding: const EdgeInsets.only(left: 20,right: 20),
                    child:  Image.asset('lib/images/apple.png',
                    height: 72),),
                    Padding(padding: const EdgeInsets.all(0),
                    child: Image.asset('lib/images/micro.png',
                    height: 72),)
                  
               
               
                  ],
                           ),
               ),
               ),
    
               SizedBox(height: 60),
    
              
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member? '),
                  const SizedBox(width:5),

                  GestureDetector(
                    onTap:() {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(onTap: () {  }, showLoginPage: () {  },)),);
                      
           },
                    child: const Text('Register now',
                    style: TextStyle(color: Color.fromARGB(255, 223, 25, 4),
                    ),
                    ),
                  ),
                  
                ],
              )
            
             ],
             ),
         ),
       ),
      ),
    );
    }
}
