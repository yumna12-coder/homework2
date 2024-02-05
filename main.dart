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

        body: Scrollbar(
          child: ListView( scrollDirection: Axis.horizontal,
            children: [
              Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                              
                       Image.asset('assets/images/cc.jpg',width: 150,),
                  
                      Image.asset('assets/images/ff.jpg',width: 130,),
                        Image.asset('assets/images/pp.jpg',width: 150,),
                       Image.asset('assets/images/x.jpg',width: 190,),
                      ],
                        
                    ), Row(   
                    children: [ Image.asset('assets/images/y.jpg',width: 150,),
                 Image.asset('assets/images/cc.jpg',width: 150,), Image.asset('assets/images/o.jpg',width: 150,), ] ),
               Row(children: [ Image.asset('assets/images/ff.jpg',width: 150,),Image.asset('assets/images/w.jpg')],) ],
              ),
               
                    
           ],
          ),
        ),
        ),
      );
    
  }
}
