
import 'package:portal/pages/homepage.dart';
import 'package:portal/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:portal/component/my_textfield.dart';
import 'package:portal/component/my_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
   RegisterPage ({super.key, required this.onTap, required Null Function() showLoginPage});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
} 

class _RegisterPageState extends State<RegisterPage> {
 //txt edtng cntrlrs
 final emailController = TextEditingController();
 final nameController = TextEditingController();
 final phoneController = TextEditingController();
 final batchController = TextEditingController();
 final yearController = TextEditingController();

 final passwordController = TextEditingController ();
 final confirmpasswordController = TextEditingController ();

 void signUserUp()async{
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
    if(passwordController.text ==confirmpasswordController.text){
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: emailController.text,
    password: passwordController.text, 
    );
    }
    else {
      showErrorMessage("Password Don't match ! ");
    }
    Navigator.pop(this.context);
  } 
  on FirebaseAuthException catch (e){

     Navigator.pop(this.context);
    //wrong email
    showErrorMessage(e.code);

    }
 }    
  //wrng email msg popup

  void showErrorMessage(String message){
    showDialog(
      context: context, 
      builder: (context){
     return AlertDialog(
      backgroundColor: Color.fromARGB(255, 190, 190, 190),
       title :Center(
         child: Text(
             message,
              style: const TextStyle(color: Colors.black,
             fontWeight: FontWeight.bold),
             ),
       ),
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
      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
     );
      }
    );
  
  }

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
                      child: Image.asset('lib/images/bennett.png',width: 400,height: 150
                      ),
                    ),
                    
                  ],
                ),
              ),
              SizedBox(height: 20),
    
              Text('  Lets create an Account !',style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 97, 96, 96)) 
              ),
    
              SizedBox(height: 20),
              Mytextfield(
                controller: nameController,
                hintText: 'Name',
                obscureText: false,  
               ),
               SizedBox(height: 10),

               Mytextfield(
                controller: phoneController,
                hintText: 'Phone No.',
                obscureText: false,  
               ),
               SizedBox(height: 10),
               Mytextfield(
                controller: batchController,
                hintText: 'Batch',
                obscureText: false,  
               ),
               SizedBox(height: 10),
               Mytextfield(
                controller: yearController,
                hintText: 'Year',
                obscureText: false,  
               ),
               SizedBox(height: 10),





    
              //username 
              Mytextfield(
                controller: emailController,
                hintText: 'Username',
                obscureText:  false,
              ),
    
              SizedBox(height: 20),
              
                
    
              
              // password 
               Mytextfield(
                controller: passwordController,
                hintText: 'password',
                obscureText: true,  
               ),
               SizedBox(height: 10),

               Mytextfield(
                controller: confirmpasswordController,
                hintText: 'confirm password',
                obscureText: true,  
               ),
               
             SizedBox(height: 50),
              
           
           
               
                
              
            
              
              //sign butt 
              Mybutton(
                text:"Sign Up",
                onTap: signUserUp
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
                    Padding(padding: const EdgeInsets.only(left: 60),child: Image.asset('lib/images/google.png',
                    height: 72),)
                    ,
                    Padding(padding: const EdgeInsets.only(left: 20,right: 20),child:  Image.asset('lib/images/apple.png',
                    height: 72),),
                    Padding(padding: const EdgeInsets.all(0),child: Image.asset('lib/images/micro.png',
                    height: 72),)
                  
               
               
                  ],
                           ),
               ),
               ),
    
               SizedBox(height: 60),
    
              
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account ? ',style: TextStyle(fontSize: 15,)),
                  const SizedBox(width:5),

                  GestureDetector( 
                   onTap:() { 
                     Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(onTap: () {  },)),);
                     
                   },
                    child: const Text('Login now',
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

