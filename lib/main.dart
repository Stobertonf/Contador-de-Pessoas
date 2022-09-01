import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key? key)) super(key: key);


  @override 
  Widget build(Buildcontext contexxt) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );

  }

  class HomePage extends StatefulWidget{
    @override
    Widget build(Buildcontext context){
      return Container();
    }
  }

  class _HomePageState extends State<HomePage>{
    int count = 0;

    void decrement(){
      setState((){
        count --;
      });
      
    }

    void incrementCount() {
      setState((){
        count ++ ;
      });
      
    }

    return Scaffold(
    backgroundColor: Colors.red,
     body:  Container(
      decoration:  BoxDecoration(
        image: AssetImage('assets/images/picanha.jpg'),
        fit: BoxFit.cover,
      ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text(
              "Pode Entrar",
              style: TextStyle(
                fontSize:30,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
           ), 
            Padding(
            padding: EdgeInsets.all(40),
           Text(
              count.toString(), //Transformando uma variável inteira para string
              style: const TextStyle(
                fontSize:100,
                color: Colors.white,     
              ),
            ),
           ), 
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
     
            TextButton(
                 onPressd: decrement,
                 style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor:Colors.white,
                  fixeSized: const Sized(100,100),
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(16),
                  ),               
                 ), 
                 child:Text(
                  "Saiu",
                 style:TextStyle(
                   fontSize: 16,
                   color: Colors.black,
                   style: TextButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor:Colors.white,
                    fixeSized: const Sized(100,100),
                    shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(16),
                  ),
                ),
               ),
              ),
             const SizedBox(
                width: 32,
              ),
            const TextButton(
                 onPressd: decrement, 
                 child:Text(
                  "Entrar",
                 style:TextStyle(
                   fontSize: 16,
                  color: Colors.black,
                  ),
                 ),
              ),
             ),
            ],
           ),    
         ]
       ),
     ),     
    );     
    
  }


}
