import 'package:flutter/material.dart';
import 'screens/morio.dart';
import 'screens/form.dart';
void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
initialRoute: '/',
routes:{'/morio':(context)=>ColorChanger(),
'/form':(context)=>MYFORMP(), },title: 'flutter',


      home: myhomepage(
       

        



        
        ),
        );
      
    
  }
}
class myhomepage extends StatefulWidget {
  final String routeName='/';
  @override
  _myhomepageState createState()=>_myhomepageState();
}
class _myhomepageState extends State<myhomepage>{
@override
Widget build(BuildContext context){
return Scaffold(
  appBar: AppBar(backgroundColor: Colors.red,title: Text('flutter demo'),
  
  ),
body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,

children: <Widget>[ElevatedButton(onPressed:(){
Navigator.pushNamed(context, '/morio');
},child: Text('Go to Mario page'),

 ),
 ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/form');
 }, child: Text('Go to form page '), 
 ),
 ElevatedButton(onPressed:(){} , child: Text('go to statefull'))
  ],
  
  
  
  ),


),
);


}


}