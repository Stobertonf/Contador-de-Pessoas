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

    bool get isEmpety => 0 as count == 0;
    bool get isFull => 0 as count == 20;

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
              IsFull ? 'Lotado' : 'Pode Entrar',
              style: const TextStyle(
                fontSize:30,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
           ), 
            Padding(
            padding: EdgeInsets.all(40),
           Text(
              count.toString(), //Transformando uma variável inteira para string
              style:  TextStyle(
                fontSize:100,
                color: isFull?  Colors.red : Colors.white, //Veroficando Se está Lotado. Se sim, muda o texto para vermelho.  
              ),
            ),
           ), 
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[    
            TextButton(
                 onPressed: isEmpety? null : decrement,
                 style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: isEmpety? Colors.white.withOpacity(0.2) : Colors.white,
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
                    backgroundColor:isFull ? Colors.white.withOpacity(0.2) : Colors.white,
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
              onPressd: isFull? null : increment,    
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
