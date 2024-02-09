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
   AssetImage _marioImage = AssetImage('assets/images/mariof.png.png');
double _imagewidth=200;
  double _imageXPosition = 0;
  double _imageYPosition=200;



  void _moveLeft() {
    setState(() {
      _imageXPosition -= 10;
      _marioImage = AssetImage('assets/images/mario_left.png.png');

    });
  }
  void _moveRight(){
setState(() {
  _imageXPosition+=10;
  _marioImage = AssetImage('assets/images/right.png');

});
  }
  
void _moveDown(){
  setState(() {
    _imageYPosition-=10;
    _marioImage = AssetImage('assets/images/down.png');

  });
}
void _moveUp(){
  setState(() {
      _imageYPosition+=10;
      _marioImage=AssetImage('assets/images/upjump.png');
  });

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mario'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        child: Stack(
          children: [
            Positioned(
              left: _imageXPosition,
              width: 400 ,
              bottom: _imageYPosition,
       
              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    width:_imagewidth ,
                    image: _marioImage,

              )],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                      onPressed: _moveUp,
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
                      onPressed: _moveDown,
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
                      onPressed: _moveLeft,
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
                      onPressed: _moveRight,
                      child: Text(
                        'right',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}