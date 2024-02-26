import 'package:flutter/material.dart';

void main() {
  runApp(MYFORM());
}

class MYFORM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MYFORMP(),
    );
  }
}

class MYFORMP extends StatefulWidget {
  @override
  _MYFormState createState() => _MYFormState();
}

class _MYFormState extends State<MYFORMP> {
  final _formkey=GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.pink,
        title: Text('form'),
      ),
      body: Center(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('form'),
            TextFormField(
validator: (value) {
  print(value);
  if(value!.isEmpty){

    return 'please enter ';
  }
  return null;
},



  decoration: InputDecoration(
    labelText: 'Enter your name',
   
  ),
  onSaved:(newValue){
    print('name: $newValue');

  },
), 



TextFormField(
validator: (value) {
  print(value);
  if(value!.isEmpty){

    return 'please enter pass';
  }
  return null;
},



  decoration: InputDecoration(
    labelText: 'Enter your pass',
   
  ),
  onSaved:(newValue){
    print('pass:$newValue');
  },
),




   ElevatedButton(onPressed: (){if (_formkey.currentState!.validate()){

    _formkey.currentState!.save();
  
   }
   else{
    print('error');
   }
   }, child: Text('submit'))         
            
            
          ] ),
          ),
        ),
      );
  
  }
}