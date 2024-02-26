import 'dart:math';

import 'package:flutter/material.dart';


void main()=> runApp(MyApp());

class MyApp extends  StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'flutter ',theme: ThemeData(primarySwatch: Colors.blue), 
    home: ColorChanger(),
    );
  }}
class ColorChanger extends StatefulWidget {
  @override
  _ColorChangerState createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
   String _marioImage = 'assets/images/mariof.png.png';
  double posright = 200;
  double posUp=100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mario'),
        backgroundColor: Colors.blue,
      ),
      body:  ListView(
            children: [
              Container( 
 
height: 820,
decoration: BoxDecoration(
  
  image: DecorationImage(image:

 Image.asset('assets/images/background.jpg').image,fit: BoxFit.cover)),



                child: Column( 
                  children: [
                    
                    Center(
                      child: Row(
                        children: [  
                    
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.grey,
                                        ),
                                        onPressed: (){setState(() {
                                          _marioImage='assets/images/upjump.png';
                                          posUp-=10;
                                       
                                        });},
                                        child: Text(
                                          'up',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                        height: 10,
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.grey,
                                        ),
                                        onPressed: (){setState(() {
                                          _marioImage='assets/images/down.png';
                                          posUp+=10;
                                        });},
                                        child: Text(
                                          'down',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                        height: 10,
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.grey,
                                        ),
                                        onPressed: (){setState(() {
                                          _marioImage='assets/images/mario_left.png.png';
                                          posright+=10;
                                        });},
                                        child: Text(
                                          'left',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                        height: 10,
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.grey,
                                        ),
                                        onPressed: (){setState(() {
                                          _marioImage='assets/images/right.png';
                                          posright-=10;
                                
                                        });
                                       },
                                        child: Text(
                                          'right',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],)
                                  ),
                              
         Align(
           child: Container( width: 411.4,
               margin:  EdgeInsets.only(top: posUp,right: posright),
               child: Image.asset(_marioImage,width: 200,height: 150,),
              ),
         ),
           
                ]),
         ) ],
                          ),
                      
                      );
                    
                  
                
              
            
          
        
      
    
  }
}