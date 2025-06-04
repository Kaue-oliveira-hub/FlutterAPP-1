import  'package:flutter/material.dart';


class SensoresScreen extends StatefulWidget{
 const SensoresScreen({super.key});


  @override
    State<SensoresScreen> createState() => _SensoresScreenState();
    }

    class _SensoresScreenState extends State <SensoresScreen>{

        @override
        Widget build(BuildContext context){
          return Scaffold(
          appBar: AppBar(
            title: const Text('datos de los sensores'),
          ),
          body: PageView(
            physics: const BouncingScrollPhysics(),
            children:[
              Gyroscope(),
              Accelelometrum(),
              Magnetometrum(),
            ]
          ),
        );
      }
    }



    class Gyroscope extends StatelessWidget{
 const Gyroscope({super.key});


        @override
        Widget build(BuildContext context){
          return Scaffold(
          body: Column(
            children:[
              SizedBox(height: 30,),
              Center(
                child: Text('Giroscopio', style: TextStyle(fontSize: 42, color: Colors.grey ),),
              ),
               SizedBox(height: 150,),
              Center(
                child: Text(
'''
x: 10
y: 35
z:97
''',
        style: TextStyle(fontSize: 60, color: Colors.lightGreenAccent),

                ),    
              ),
          ]
          ),
       
        );
      }
    }




    class Accelelometrum extends StatelessWidget{
 const Accelelometrum({super.key});


        @override
        Widget build(BuildContext context){
          return Scaffold(
          body: Column(
            children:[
              SizedBox(height: 30,),
              Center(
                child: Text('Acelerometro', style: TextStyle(fontSize: 42, color: Colors.grey ),),
              ),
               SizedBox(height: 150,),
              Center(
                child: Text(
'''
x: 10
y: 35
z:97
''',
        style: TextStyle(fontSize: 60, color: Colors.pinkAccent),

                ),    
              ),
          ]
          ),
       
        );
      }
    }



    class Magnetometrum extends StatelessWidget{
 const Magnetometrum({super.key});


        @override
        Widget build(BuildContext context){
          return Scaffold(
          body: Column(
            children:[
              SizedBox(height: 30,),
              Center(
                child: Text('Magnetometro', style: TextStyle(fontSize: 42, color: Colors.grey ),),
              ),
               SizedBox(height: 150,),
              Center(
                child: Text(
'''
x: 10
y: 35
z:97
''',
        style: TextStyle(fontSize: 60, color: Colors.yellow),

                ),    
              ),
          ]
          ),
       
        );
      }
    }


    