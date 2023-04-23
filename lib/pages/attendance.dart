
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:portal/component/my_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portal/pages/homepage.dart';





class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {

  _AttendanceState(){
_selectedVal = _subjectList[0];

  }


  TextEditingController _date =TextEditingController();
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
        title: Text('Attendance',style: TextStyle(fontWeight: FontWeight.bold ,
        fontSize: 25),),
        backgroundColor: Color.fromARGB(255, 0, 0, 0)
      ),
      
      body: Container(
      
        padding: const EdgeInsets.all(30.0),
        
        
        child: Column(
          
        children: <Widget>[
          
       
          TextField(
             controller: _date,
                decoration: const InputDecoration(
                  icon:Icon(Icons.calendar_today_rounded),
                   iconColor: Colors.black,
                  labelText: 'Select Date',
                  labelStyle: TextStyle(
                color:  Color.fromARGB(255, 0, 0, 0) 
              ),
                  hintText: 'dd-mm-yy',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 88, 88, 88)
                )
              ),
             
         ),

         onTap: () async{
                  DateTime? pickeddate = await showDatePicker(context: context,
                  initialDate: DateTime.now(),
                   firstDate: DateTime(2016),
                    lastDate: DateTime(2100),
                  );
                  if(pickeddate!=null){
                    setState(() {
                      _date.text = DateFormat('dd-MM-yyyy').format(pickeddate);
                    });
                  }
                },
           
            // textInputAction: TextInputAction.next, 
          ),
            

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
        SizedBox(height:20),

        Mybutton(onTap:() {
          
        }, 
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
      
      
       color: Color.fromARGB(255, 252, 251, 251),
       ),
       
        Icon(Icons.home,size: 50,
        color: Color.fromARGB(255, 252, 251, 251),),
        Icon(Icons.settings,size: 30,
        color: Color.fromARGB(255, 252, 251, 251),),
      

    ]),
      
        

    );
  }
}

