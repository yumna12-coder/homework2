import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
        title:  Text('Gallery'),), 

        body:
        
        
        
        
        
        
        
        
        
        
        
        
        
        
         Container(
          child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3 ,mainAxisSpacing: 20,crossAxisSpacing: 20,mainAxisExtent: 200)
         , children: [Container(child:Image.asset('assets/images/fd.jpg')),
         Container(child:Image.asset('assets/images/ff.jpg')),
         Container(child:Image.asset('assets/images/w.jpg')),
         Container(child:Image.asset('assets/images/x.jpg')),
         Container(child:Image.asset('assets/images/pp.jpg')),
         Container(child:Image.asset('assets/images/cc.jpg')),
         Container(child:Image.asset('assets/images/cx.jpg')),
         Container(child:Image.asset('assets/images/y.jpg')),
         Container(child:Image.asset('assets/images/ff.jpg')),
         Container(child:Image.asset('assets/images/dd.jpg')),
         Container(child:Image.asset('assets/images/o.jpg')),
         Container(child:Image.asset('assets/images/fd.jpg')),
         Container(child:Image.asset('assets/images/w.jpg')),
         Container(child:Image.asset('assets/images/cc.jpg')),
         Container(child:Image.asset('assets/images/pp.jpg')),
         
         
         
         ],)



        
        ),
        ),
      );
    
  }
}
