
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:portal/component/my_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portal/pages/homepage.dart';





class Grades extends StatefulWidget {
  const Grades({super.key});

  @override
  State<Grades> createState() => _GradesState();
  
}

class _GradesState extends State<Grades> {

  _GradesState(){
    _selectedVal = _subjectList[0];
    _selectedYear = _YearList[0];
    // _selectedSem=_SemList[0];


  }

 
 final _YearList = [ "1-Year","2-year","3-Year","4-year",];
 String? _selectedYear ="";
//  final _SemList = [ "Mid-Sem","End-Sem"];
//  String? _selectedSem ="";

 final _subjectList = [ "DAA", "Operating system", "Computer Netwroks", "Blockchain", "Digital marketting", "Ethics", "Artificial Intelligence",
  "Full Stack",
  "Cloud",
  "Drone",
  "Robotics",
  "IOT",
  "Gaming",];
 String? _selectedVal ="";
  

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grades',style: TextStyle(fontWeight: FontWeight.bold ,
        fontSize: 25),),
        backgroundColor: Color.fromARGB(255, 0, 0, 0)
      ),
      
      body: Container(
      
        padding: const EdgeInsets.all(30.0),
        
        
        child: Column(
          
        children: <Widget>[


           DropdownButtonFormField(
    
         menuMaxHeight: 150.0,
          
            borderRadius:BorderRadius.circular(25),
          
            
           
             
           dropdownColor: Color.fromARGB(255, 255, 255, 255),
            decoration: const InputDecoration(
                    
                    icon:Icon(Icons.calendar_month),
                     iconColor: Color.fromARGB(255, 0, 0, 0),
                    labelText: 'Select Year',
                    labelStyle: TextStyle(
                  color:  Color.fromARGB(255, 0, 0, 0) 
                ),
                    hintText: 'Choose Year',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 88, 88, 88)
                  )
                ),
               
           ),
           autovalidateMode: AutovalidateMode.onUserInteraction,
          
            value: _selectedYear, 
            items: _YearList.map(
              (e)=> DropdownMenuItem(
                child:Text(e),value: e,)).toList(),
             
           onChanged: (val){
            setState(() {
              _selectedVal = val as String;
            });
        
           },
         
        ),

        SizedBox(height:30),

        // DropdownButtonFormField(
    
        //   // menuMaxHeight: 100.0,
          
        //     borderRadius:BorderRadius.circular(25),
          
            
           
             
        //    dropdownColor: Color.fromARGB(255, 255, 255, 255),
        //     decoration: const InputDecoration(
                    
        //             icon:Icon(Icons.calendar_month),
        //              iconColor: Color.fromARGB(255, 0, 0, 0),
        //             labelText: 'Select Semester',
        //             labelStyle: TextStyle(
        //           color:  Color.fromARGB(255, 0, 0, 0) 
        //         ),
        //             hintText: 'Choose Semester',
        //         focusedBorder: OutlineInputBorder(
        //           borderSide: BorderSide(
        //             color: Color.fromARGB(255, 88, 88, 88)
        //           )
        //         ),
               
        //    ),
        //    autovalidateMode: AutovalidateMode.onUserInteraction,
        //     value: _selectedSem, 
        //     items: _SemList.map(
        //       (e)=> DropdownMenuItem(
        //         child:Text(e),value: e,)).toList(),
             
        //    onChanged: (val){
        //     setState(() {
        //       _selectedVal = val as String;
        //     });
        
        //    },
         
        // ),
      

      

          SizedBox(height: 30),

        
           DropdownButtonFormField(
            
          // itemHeight: null
          menuMaxHeight: 300.0,
          
            borderRadius:BorderRadius.circular(25),
          
            
           
             
           dropdownColor: Color.fromARGB(255, 255, 255, 255),
            decoration: const InputDecoration(
                    
                    icon:Icon(Icons.book_outlined),
                     iconColor: Color.fromARGB(255, 0, 0, 0),
                    labelText: 'Select Subject',
                    labelStyle: TextStyle(
                  color:  Color.fromARGB(255, 0, 0, 0) 
                ),
                    hintText: 'Choose Subject',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 88, 88, 88)
                  )
                ),
               
           ),
           autovalidateMode: AutovalidateMode.onUserInteraction,
            value: _selectedVal, 
            items: _subjectList.map(
              (e)=> DropdownMenuItem(
                child:Text(e),value: e,)).toList(),
             
           onChanged: (val){
            setState(() {
              _selectedVal = val as String;
            });
        
           },
         
        ),
        SizedBox(height: 20,),

        Mybutton(onTap:() => HomePage(), 
        text: 'Show')
          
        ],
          ),
          
          
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
       Icon(Icons.person,size: 30,
       color: Color.fromARGB(255, 252, 251, 251),),
        Icon(Icons.home,size: 50,
        color: Color.fromARGB(255, 252, 251, 251),),
        Icon(Icons.settings,size: 30,
        color: Color.fromARGB(255, 252, 251, 251),),
      

    ]),  
        

    );
  }
}


