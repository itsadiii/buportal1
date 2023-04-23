import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:portal/pages/grades.dart';
import 'package:portal/pages/Attendance.dart';
import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
   HomePage({super.key});
  
  //sgnout
  void SignUSerOut(){
    FirebaseAuth.instance.signOut();
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
       
        decoration: BoxDecoration(
          
          
          color: Color.fromARGB(255, 159, 158, 158),
        ),
    //     child: CircleAvatar(
    // backgroundColor: Colors.white,
    child: CircleAvatar(
      radius: 10,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      
      
      child: Icon(
        Icons.person,size: 80,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    
        )
       
         
        
      ),
      ListTile(
        title: const Text('Help',
        style: TextStyle(
          fontWeight: FontWeight.bold,fontSize: 20),),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: const Text('Feedback',
        style: TextStyle(
          fontWeight: FontWeight.bold,fontSize: 20)),
        onTap: () {
          // Update the state of the app.
          // ...
        },
          
      
          
        
      ),
       ListTile(
        title: const Text('About us ',
        style: TextStyle(
          fontWeight: FontWeight.bold,fontSize: 20)),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      
       ),
    
        
    ]
        ),
  
      ),
      appBar: AppBar
      (   
          title: Text(
            "DASHBOARD",
            
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30),),
            backgroundColor: Colors.black,
            centerTitle: true,
        
        actions: [ IconButton(onPressed: SignUSerOut,
       icon: Icon(Icons.logout))
           ],
    ),
  body: 
  
   CustomScrollView(
    
  primary: false,
  slivers: <Widget>[
    SliverPadding(
      
      padding: const EdgeInsets.all(40),
      sliver: SliverGrid.count(
        crossAxisSpacing: 30,
        mainAxisSpacing: 40,
        crossAxisCount: 2,
        children: <Widget>[
          
           InkWell( onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Attendance()),);
             
           },
             child: Container(
              height: 50,
                  padding: const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: Color.fromARGB(255, 215, 215, 215),
                 borderRadius:BorderRadius.circular(20),
                 ),
                   child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Image.asset('lib/images/attendance.png',
                      height: 100,width: 100,),
                      SizedBox(height: 10,),
                      Text("ATTENDANCE",style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 17),),
                    ],
                  )
                  
                ),
           ),
           InkWell( onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Grades()),);
             
           },
             child: Container(
                  padding: const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: Color.fromARGB(255, 215, 215, 215),
                 borderRadius:BorderRadius.circular(20),
                 ),
                   child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Image.asset('lib/images/grade.jpeg',height: 100,width: 100,),
                      SizedBox(height: 10,),
                      Text("GRADES",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    ],
                  )
                  
                ),
           ),
            
            InkWell( onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Attendance()),);
             
           },
             child: Container(
                  padding: const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: Color.fromARGB(255, 215, 215, 215),
                 borderRadius:BorderRadius.circular(20),
                 ),
                   child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Image.asset('lib/images/wellness.png',height: 100,width: 100,),
                      SizedBox(height: 10,),
                      Text("WELLNESS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    ],
                  )
                  
                ),
           ),
          InkWell( onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Attendance()),);
             
           },
             child: Container(
                  padding: const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: Color.fromARGB(255, 215, 215, 215),
                 borderRadius:BorderRadius.circular(20),
                 ),
                   child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Image.asset('lib/images/timetable.jpeg',height: 100,width: 100,),
                      SizedBox(height: 10,),
                      Text("TIMETABLE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    ],
                  )
                  
                ),
           ),
           InkWell( onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Attendance()),);
             
           },
             child: Container(
                  padding: const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: Color.fromARGB(255, 215, 215, 215),
                 borderRadius:BorderRadius.circular(20),
                 ),
                   child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Image.asset('lib/images/course.jpeg',height: 100,width: 100,),
                      SizedBox(height: 10,),
                      Text("COURSE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    ],
                  )
                  
                ),
           ),
           InkWell( onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Attendance()),);
             
           },
             child: Container(
                  padding: const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: Color.fromARGB(255, 215, 215, 215),
                 borderRadius:BorderRadius.circular(20),
                 ),
                   child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Image.asset('lib/images/mess.jpeg',height: 100,width: 100,),
                      SizedBox(height: 10,),
                      Text("MESS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    ],
                  )
                  
                ),
           ),
           InkWell( onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Attendance()),);
             
           },
             child: Container(
                  padding: const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: Color.fromARGB(255, 215, 215, 215),
                 borderRadius:BorderRadius.circular(20),
                 ),
                   child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Image.asset('lib/images/leave.png',height: 90,width: 90,),
                      SizedBox(height: 10,),
                      Text("LEAVE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    ],
                  )
                  
                ),
           ),

           InkWell( onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Attendance()),);
             
           },
             child: Container(
                  padding: const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: Color.fromARGB(255, 215, 215, 215),
                 borderRadius:BorderRadius.circular(20),
                 ),
                   child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Image.asset('lib/images/exam.png',height: 100,width: 100,),
                      SizedBox(height: 10,),
                      Text("QUIZ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    ],
                  )
                  
                ),
           ),


         
        ],
      ),
    ),
  ],
),

    bottomNavigationBar: CurvedNavigationBar(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      buttonBackgroundColor: Colors.black,
      color: Colors.black,
      animationDuration: Duration(milliseconds: 300),
      onTap: (index) {
       print(index);
        
      },
     
     
     items:[
      //  IconButton(onPressed:() => Attendance(),
      //   icon: Icon(Icons.person,size: 30,
      
      //  color: Color.fromARGB(255, 252, 251, 251),
      //  ),),
      // IconButton(onPressed:() => HomePage(),
      //   icon: Icon(Icons.home,size: 30,
      
      //  color: Color.fromARGB(255, 252, 251, 251),
      //  ),),
      //   IconButton(onPressed:() => Grades(),
      //   icon: Icon(Icons.settings,size: 30,
      
      //  color: Color.fromARGB(255, 252, 251, 251),
      //  ),),
      
      
      
      
       Icon(Icons.person,size: 50,
        color: Color.fromARGB(255, 252, 251, 251),),
        Icon(Icons.home,size: 50,
        color: Color.fromARGB(255, 252, 251, 251),),
        Icon(Icons.settings,size: 30,
        color: Color.fromARGB(255, 252, 251, 251),),
      

    ]),  
        
    );
    
  }
}

